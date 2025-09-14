import 'dart:convert';
import 'dart:io';

void main() async {
  // Path to the ARB file
  final arbFile = File('lib/l10n/app_ar.arb');
  final content = await arbFile.readAsString();
  final Map<String, dynamic> arbData = json.decode(content);
  
  // Extract all message keys (excluding metadata)
  final messageKeys = arbData.keys
      .where((key) => !key.startsWith('@') && key != '@@locale' && key != '@@last_modified' && key != '@@context')
      .toList();

  print('Found ${messageKeys.length} message keys in the ARB file');
  
  // Search for usages in Dart files
  final dartFiles = await Directory('lib')
      .list(recursive: true)
      .where((entity) => entity.path.endsWith('.dart'))
      .toList();
  
  final usedKeys = <String>{};
  final unusedKeys = <String>{};
  
  for (final file in dartFiles) {
    final content = await File(file.path).readAsString();
    
    for (final key in messageKeys) {
      if (content.contains('AppLocalizations.of(context)!.$key') ||
          content.contains('AppLocalizations.of(context).$key') ||
          content.contains('l10n.$key') ||
          content.contains('l10n?.$key')) {
        usedKeys.add(key);
      }
    }
  }
  
  // Find unused keys
  unusedKeys.addAll(messageKeys.where((key) => !usedKeys.contains(key)));
  
  print('\nUsed keys (${usedKeys.length}):');
  usedKeys.toList()..sort()..forEach(print);
  
  print('\nUnused keys (${unusedKeys.length}):');
  unusedKeys.toList()..sort()..forEach(print);
  
  // Write unused keys to a file for review
  final output = File('unused_localizations.txt');
  await output.writeAsString(unusedKeys.join('\n'));
  print('\nUnused keys have been written to ${output.path}');
}
