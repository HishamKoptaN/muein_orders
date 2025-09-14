import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;

class L10nSync {
  static Future<void> syncLanguageFiles() async {
    try {
      final l10nDir = Directory('lib/l10n');
      final arabicFile = File(path.join(l10nDir.path, 'app_ar.arb'));
      
      if (!await arabicFile.exists()) {
        print('Error: Arabic file not found at ${arabicFile.path}');
        return;
      }

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
      
      print('Language files synchronized successfully!');
    } catch (e) {
      print('Error synchronizing language files: $e');
    }
  }

  static Future<void> _syncFile(File file, List<MapEntry<String, dynamic>> arabicKeys) async {
    try {
      print('Processing ${file.path}');
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
      
      print('✓ Updated ${path.basename(file.path)}');
    } catch (e) {
      print('Error processing ${file.path}: $e');
    }
  }
}
