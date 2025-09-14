import 'dart:convert';
import 'dart:io';

void main() {
  final directory = Directory('lib/l10n');
  final files = directory
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('.arb'))
      .toList();

  // Get all keys from all files
  final allKeys = <String>{};
  final fileContents = <String, Map<String, dynamic>>{};

  for (final file in files) {
    final content = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final locale = content['@@locale'] as String? ?? 'unknown';
    
    // Filter out metadata keys (starting with @@)
    final keys = content.keys.where((key) => !key.startsWith('@@')).toSet();
    allKeys.addAll(keys);
    
    fileContents[file.path] = content;
    print('$locale: ${keys.length} keys');
  }

  print('\nChecking for missing keys...\n');

  // Check each file for missing keys
  for (final entry in fileContents.entries) {
    final path = entry.key;
    final content = entry.value;
    final locale = content['@@locale'] as String? ?? 'unknown';
    final missingKeys = allKeys.where((key) => !content.containsKey(key)).toList();
    
    if (missingKeys.isNotEmpty) {
      print('\n\x1B[31mMissing keys in $locale ($path):\x1B[0m');
      for (final key in missingKeys) {
        print('  - "$key"');
      }
    } else {
      print('\n\x1B[32m$locale: All keys present!\x1B[0m');
    }
  }
}
