import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  // 1. Read the ARB file
  final arbFile = File('lib/l10n/app_ar.arb');
  final content = await arbFile.readAsString();
  final Map<String, dynamic> arbData = json.decode(content);
  
  // 2. Extract all message keys (excluding metadata and nested objects)
  final messageKeys = <String>[];
  
  void extractKeys(Map<String, dynamic> map, [String? prefix]) {
    map.forEach((key, value) {
      // Skip metadata keys and nested objects
      if (key.startsWith('@') || key.startsWith('@@') || value is Map) {
        return;
      }
      
      final fullKey = prefix != null ? '$prefix.$key' : key;
      messageKeys.add(fullKey);
    });
  }
  
  // Extract top-level keys
  extractKeys(arbData);
  
  // Extract nested keys
  final nestedSections = ['auth', 'common', 'welcome', 'orders', 'profile', 'languages'];
  for (final section in nestedSections) {
    if (arbData[section] is Map) {
      extractKeys(arbData[section] as Map<String, dynamic>, section);
    }
  }
  
  print('Found ${messageKeys.length} message keys in the ARB file');
  
  // 3. Search for usages in Dart files
  final dartFiles = await Directory('lib')
      .list(recursive: true)
      .where((entity) => entity.path.endsWith('.dart'))
      .toList();
  
  final usedKeys = <String>{};
  final unusedKeys = <String>{};
  
  for (final file in dartFiles) {
    if (file.path.contains('.freezed.') || file.path.contains('.g.')) {
      continue; // Skip generated files
    }
    
    try {
      final content = await File(file.path).readAsString();
      
      for (final key in messageKeys) {
        // Check for different patterns of key usage
        if (content.contains('l10n.$key') ||
            content.contains('l10n?.$key') ||
            content.contains('l10n.$key.') ||
            content.contains('"$key"') ||
            content.contains("'$key'")) {
          usedKeys.add(key);
        }
      }
    } catch (e) {
      print('Error reading ${file.path}: $e');
    }
  }
  
  // 4. Find unused keys
  unusedKeys.addAll(messageKeys.where((key) => !usedKeys.contains(key)));
  
  // 5. Print results
  print('\nUsed keys (${usedKeys.length}):');
  usedKeys.toList()..sort()..forEach(print);
  
  print('\nUnused keys (${unusedKeys.length}):');
  unusedKeys.toList()..sort()..forEach(print);
  
  // 6. Write unused keys to a file for review
  final output = File('unused_ar_keys.txt');
  await output.writeAsString(unusedKeys.join('\n'));
  print('\nUnused keys have been written to ${output.path}');
  
  // 7. Create a clean ARB file without unused keys
  final cleanArbData = Map<String, dynamic>.from(arbData);
  
  // Remove unused top-level keys
  cleanArbData.removeWhere((key, _) => 
      !key.startsWith('@') && unusedKeys.contains(key));
  
  // Remove unused nested keys
  for (final section in nestedSections) {
    if (cleanArbData[section] is Map) {
      final sectionMap = Map<String, dynamic>.from(cleanArbData[section]);
      sectionMap.removeWhere((key, _) => unusedKeys.contains('$section.$key'));
      cleanArbData[section] = sectionMap;
    }
  }
  
  // Write clean ARB file
  final cleanArbFile = File('lib/l10n/app_ar_clean.arb');
  final encoder = JsonEncoder.withIndent('  ');
  await cleanArbFile.writeAsString(encoder.convert(cleanArbData));
  
  print('\nClean ARB file has been written to ${cleanArbFile.path}');
  print('Please review the file and rename it to app_ar.arb if everything looks good.');
}
