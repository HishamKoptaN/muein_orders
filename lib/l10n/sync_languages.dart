import 'dart:convert';
import 'dart:io';

void main() async {
  final l10nDir = Directory('lib/l10n');
  final arabicFile = File('${l10nDir.path}/app_ar.arb');
  
  if (!await arabicFile.exists()) {
    print('Error: Arabic file not found at ${arabicFile.path}');
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

    print('Found ${arabicKeys.length} keys in Arabic file');

    // Process each language file
    await for (var entity in l10nDir.list()) {
      if (entity is File && 
          entity.path.endsWith('.arb') && 
          !entity.path.endsWith('_ar.arb')) {
        await _syncFile(entity, arabicKeys);
      }
    }
  } catch (e) {
    print('Error: $e');
  }
}

Future<void> _syncFile(File file, List<MapEntry<String, dynamic>> arabicKeys) async {
  try {
    final content = await file.readAsString();
    final jsonData = json.decode(content) as Map<String, dynamic>;
    
    // Keep metadata
    final metadata = Map.fromEntries(
      jsonData.entries.where((entry) => entry.key.startsWith('@@')),
    );
    
    // Keep existing translations
    final existingTranslations = Map.fromEntries(
      jsonData.entries.where((entry) => !entry.key.startsWith('@@')),
    );
    
    // Create new data with all Arabic keys
    final newData = <String, dynamic>{};
    
    // Add metadata first
    newData.addAll(metadata);
    
    // Add all Arabic keys, keeping existing translations where they exist
    for (var entry in arabicKeys) {
      newData[entry.key] = existingTranslations[entry.key] ?? '';
    }
    
    // Sort keys for better readability
    final sortedKeys = newData.keys.toList()..sort();
    final sortedData = {
      for (var key in sortedKeys) key: newData[key],
    };
    
    // Write back to file
    final encoder = JsonEncoder.withIndent('  ');
    await file.writeAsString(encoder.convert(sortedData));
    
    print('Updated ${file.path} with ${arabicKeys.length} keys');
  } catch (e) {
    print('Error processing ${file.path}: $e');
  }
}
