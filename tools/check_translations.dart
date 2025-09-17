import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  final l10nDir = Directory('lib/l10n');
  if (!await l10nDir.exists()) {
    print('\u001b[31m❌ Error: lib/l10n directory not found\u001b[0m');
    exit(1);
  }

  // Find all ARB files
  final arbFiles = await l10nDir
      .list()
      .where((entity) => entity.path.endsWith('.arb'))
      .toList();

  if (arbFiles.isEmpty) {
    print('\u001b[33mℹ️ No ARB files found in ${l10nDir.path}\u001b[0m');
    return;
  }

  print('\u001b[36m🔍 Found ${arbFiles.length} translation files\u001b[0m');

  // Read and parse all translation files
  final translations = <String, Map<String, dynamic>>{};
  for (final file in arbFiles) {
    try {
      final content = await File(file.path).readAsString();
      translations[file.path] = json.decode(content) as Map<String, dynamic>;
    } catch (e) {
      print('\u001b[31m❌ Error parsing ${file.path}: $e\u001b[0m');
      exit(1);
    }
  }

  // Get all unique keys from all files (excluding metadata keys that start with @)
  final allKeys = <String>{};
  for (final translation in translations.values) {
    allKeys.addAll(translation.keys.where((key) => !key.startsWith('@')));
  }

  if (allKeys.isEmpty) {
    print('\u001b[33mℹ️ No translation keys found in any file\u001b[0m');
    return;
  }

  // Check for missing keys in each file
  bool hasErrors = false;
  final missingTranslations = <String, List<String>>{};
  
  for (final entry in translations.entries) {
    final fileName = entry.key.split(Platform.pathSeparator).last;
    final missingKeys = allKeys.where((key) => !entry.value.containsKey(key)).toList();
    
    if (missingKeys.isNotEmpty) {
      hasErrors = true;
      missingTranslations[fileName] = missingKeys;
    }
  }

  // Print detailed error report
  if (hasErrors) {
    print('\n\u001b[31m❌ Translation inconsistencies found!\u001b[0m');
    
    // Show summary first
    print('\n\u001b[33m📊 Summary of missing translations:\u001b[0m');
    missingTranslations.forEach((file, keys) {
      print('  - $file: \u001b[31m${keys.length} missing keys\u001b[0m');
    });
    
    // Then show details
    print('\n\u001b[33m🔍 Detailed report:\u001b[0m');
    missingTranslations.forEach((file, keys) {
      print('\n\u001b[36m📄 $file\u001b[0m');
      for (final key in keys) {
        print('  - \u001b[33m$key\u001b[0m');
      }
    });
  }

  if (!hasErrors) {
    print('\n\u001b[32m✅ All translation files are in sync!\u001b[0m');
    print('\u001b[32m   Found ${allKeys.length} unique translation keys across ${translations.length} files.\u001b[0m');
    exit(0);
  } else {
    print('\n\u001b[33m💡 How to fix these issues:\u001b[0m');
    print('  1. Add the missing translation keys to the respective ARB files');
    print('  2. Run `dart run tools/check_translations.dart` to verify');
    print('\n\u001b[33m💡 Pro tip:\u001b[0m');
    print('   Add this to your `analysis_options.yaml` to enable automatic checking:');
    print('\n   analyzer:');
    print('     plugins:');
    print('       - custom_lint');
    print('\n   custom_lint:');
    print('     rules:');
    print('       - translation_consistency');
    exit(1);
  }
}
