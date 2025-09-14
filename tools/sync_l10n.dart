import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;

void main(List<String> arguments) async {
  final l10nDir = Directory('lib/l10n');
  final arabicFile = File('${l10nDir.path}/app_ar.arb');
  
  if (!await arabicFile.exists()) {
    print('❌ Error: Arabic file not found at ${arabicFile.path}');
    return;
  }

  try {
    // Read Arabic file as reference
    final arabicContent = await arabicFile.readAsString();
    final arabicJson = json.decode(arabicContent) as Map<String, dynamic>;
    
    // Get all keys from Arabic file (excluding metadata)
    final arabicKeys = arabicJson.entries
        .where((entry) => !entry.key.startsWith('@@'))
        .toList();

    print('🔍 Found ${arabicKeys.length} keys in Arabic file');

    // Process each language file
    await for (var entity in l10nDir.list()) {
      if (entity is File && 
          entity.path.endsWith('.arb') && 
          !entity.path.endsWith('_ar.arb')) {
        await _syncFile(entity, arabicJson, arabicKeys);
      }
    }
    
    print('\n✅ All language files have been synchronized with Arabic file!');
  } catch (e) {
    print('❌ Error: $e');
  }
}

Future<void> _syncFile(
  File file, 
  Map<String, dynamic> arabicJson,
  List<MapEntry<String, dynamic>> arabicKeys,
) async {
  try {
    final filename = path.basename(file.path);
    print('\n🔄 Processing $filename...');
    
    final content = await file.readAsString();
    final jsonData = json.decode(content) as Map<String, dynamic>;
    
    // Keep metadata and existing translations
    final metadata = Map<String, dynamic>.fromEntries(
      jsonData.entries.where((entry) => entry.key.startsWith('@@')),
    );
    
    final existingTranslations = Map<String, dynamic>.fromEntries(
      jsonData.entries.where((entry) => !entry.key.startsWith('@@')),
    );
    
    // Track changes
    int added = 0;
    int removed = 0;
    int updated = 0;
    
    // Create new data with all Arabic keys
    final newData = <String, dynamic>{};
    
    // 1. Add metadata first (preserve original metadata)
    newData.addAll(metadata);
    
    // 2. Add all Arabic keys, keeping existing translations where they exist
    for (var entry in arabicKeys) {
      final key = entry.key;
      final arabicValue = entry.value;
      
      if (existingTranslations.containsKey(key)) {
        // Keep existing translation
        newData[key] = existingTranslations[key];
      } else {
        // Add new key with empty value or default from Arabic file
        newData[key] = '';
        added++;
      }
    }
    
    // 3. Check for keys that exist in the target file but not in Arabic
    final extraKeys = existingTranslations.keys
        .where((key) => !arabicJson.containsKey(key))
        .toList();
    
    removed = extraKeys.length;
    
    // 4. Log changes
    if (added > 0 || removed > 0) {
      print('   ℹ️  $added keys added, $removed keys removed');
    } else {
      print('   ℹ️  No changes needed - already in sync');
    }
    
    // 5. Sort keys for better readability (metadata first, then sorted keys)
    final sortedData = <String, dynamic>{};
    
    // Add metadata first (in original order)
    metadata.forEach((key, value) {
      sortedData[key] = value;
    });
    
    // Add other keys in sorted order
    final otherKeys = newData.keys
        .where((key) => !key.startsWith('@@'))
        .toList()
      ..sort();
    
    for (var key in otherKeys) {
      sortedData[key] = newData[key];
    }
    
    // 6. Write back to file if changes were made
    final newContent = json.encode(sortedData);
    final formattedContent = _formatJson(newContent);
    
    if (formattedContent != content) {
      await file.writeAsString(formattedContent);
      print('   ✅ Updated $filename');
    }
  } catch (e) {
    print('❌ Error processing ${file.path}: $e');
  }
}

// Helper function to format JSON with consistent indentation
String _formatJson(String jsonString) {
  try {
    // Decode and re-encode with indentation
    final parsed = json.decode(jsonString);
    return const JsonEncoder.withIndent('  ').convert(parsed);
  } catch (e) {
    // If formatting fails, return the original
    return jsonString;
  }
}
