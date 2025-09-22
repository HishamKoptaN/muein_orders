//! dart run tool/translate_all.dart

import 'dart:io';

Future<void> main() async {
  final l10nDir = Directory('lib/l10n');

  if (!l10nDir.existsSync()) {
    print('❌ Folder lib/l10n not found');
    return;
  }

  // ابحث عن كل ملفات .arb
  final arbFiles = l10nDir
      .listSync()
      .where((f) => f is File && f.path.endsWith('.arb'))
      .map((f) => f.path.split(Platform.pathSeparator).last)
      .toList();

  // استخرج كل اللغات من الملفات باستثناء en
  final targetLangs = arbFiles
      .map((file) {
        final regex = RegExp(r'app_(.+)\.arb');
        final match = regex.firstMatch(file);
        if (match != null) {
          return match.group(1);
        }
        return null;
      })
      .where((lang) => lang != null && lang != 'en')
      .toSet()
      .toList();

  print('🌍 Languages found: $targetLangs');

  // ترجم لكل لغة
  for (final lang in targetLangs) {
    print('=== Translating to $lang ===');
    final result = await Process.run(
      'dart',
      [
        'run',
        'flutter_arb_translator:main',
        '--from',
        'en',
        '--to',
        lang!,
        '--service',
        'google',
        '--override',
        '--translate-equal',
      ],
      runInShell: true,
    );

    if (result.exitCode == 0) {
      print(result.stdout);
    } else {
      print('❌ Error translating to $lang: ${result.stderr}');
    }
  }

  // ✅ إصلاح مشكلة single quotes بعد الترجمة
  print('🛠 Fixing single quotes in .arb files...');
  for (final file in arbFiles) {
    final filePath = '${l10nDir.path}/$file';
    var content = await File(filePath).readAsString();

    // استبدل أي single quote بـ double single quote
    content = content.replaceAll("'", "''");

    await File(filePath).writeAsString(content);
  }
  print('✅ All single quotes fixed.');

  print('📦 Generating l10n classes...');

  // تنفيذ gen-l10n في النهاية
  final genL10n = await Process.run(
    'flutter',
    ['gen-l10n'],
    runInShell: true,
  );

  if (genL10n.exitCode == 0) {
    print(genL10n.stdout);
    print('✅ Finished translating & generating l10n.');
  } else {
    print('❌ Error running gen-l10n: ${genL10n.stderr}');
  }
}
