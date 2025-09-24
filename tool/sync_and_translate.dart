//! dart run tool/sync_and_translate.dart
import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final l10nDir = Directory('lib/l10n');
  final baseFile = File('${l10nDir.path}/app_ar.arb');

  if (!l10nDir.existsSync()) {
    print('❌ Folder lib/l10n not found');
    return;
  }
  if (!baseFile.existsSync()) {
    print('❌ Base file app_ar.arb not found');
    return;
  }

  // اقرأ محتوى اللغة العربية كأساس
  final baseContent =
      jsonDecode(await baseFile.readAsString()) as Map<String, dynamic>;
  final arbFiles = l10nDir
      .listSync()
      .where((f) => f is File && f.path.endsWith('.arb'))
      .map((f) => f.path.split(Platform.pathSeparator).last)
      .toList();

  // استخرج اللغات المستهدفة (بدون ar)
  final targetLangs = arbFiles
      .map((file) {
        final regex = RegExp(r'app_(.+)\.arb');
        final match = regex.firstMatch(file);
        if (match != null) return match.group(1);
        return null;
      })
      .where((lang) => lang != null && lang != 'ar')
      .cast<String>()
      .toList();

  print('🌍 Languages found: $targetLangs');

  // ترجم وأضف أي مفاتيح ناقصة
  for (final lang in targetLangs) {
    final filePath = '${l10nDir.path}/app_$lang.arb';
    final file = File(filePath);

    if (!file.existsSync()) {
      print('⚠️ File for $lang not found, creating new...');
      await file.writeAsString('{}');
    }

    final targetContent =
        jsonDecode(await file.readAsString()) as Map<String, dynamic>;
    final missingKeys = baseContent.keys
        .where((k) => !targetContent.containsKey(k))
        // ✅ تجاهل مفاتيح metadata الخاصة
        .where((k) => !k.startsWith('@@'))
        .toList();

    if (missingKeys.isEmpty) {
      print('✅ $lang already up-to-date');
      continue;
    }

    print('=== Adding missing keys to $lang: $missingKeys ===');

    // أضف القيم العربية مؤقتًا
    for (final key in missingKeys) {
      targetContent[key] = baseContent[key];
    }

    // احفظ الملف بعد الإضافة
    await file.writeAsString(
        const JsonEncoder.withIndent('  ').convert(targetContent));

    // شغّل flutter_arb_translator على الملف كامل
    final result = await Process.run(
      'dart',
      [
        'run',
        'flutter_arb_translator:main',
        '--from',
        'ar',
        '--to',
        lang,
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

  // ✅ إصلاح مشكلة single quotes
  print('🛠 Fixing single quotes in .arb files...');
  for (final file in arbFiles) {
    final filePath = '${l10nDir.path}/$file';
    var content = await File(filePath).readAsString();
    content = content.replaceAll("'", "''");
    await File(filePath).writeAsString(content);
  }
  print('✅ All single quotes fixed.');

  // ✅ إعادة توليد l10n
  print('📦 Generating l10n classes...');
  final genL10n = await Process.run(
    'flutter',
    ['gen-l10n'],
    runInShell: true,
  );

  if (genL10n.exitCode == 0) {
    print(genL10n.stdout);
    print('✅ Finished syncing, translating & generating l10n.');
  } else {
    print('❌ Error running gen-l10n: ${genL10n.stderr}');
  }
}
