//! tool/manage_l10n.dart
import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final l10nDir = Directory('lib/l10n');
  final baseFile = File('${l10nDir.path}/app_ar.arb');

  print('\n🌍 Starting automatic l10n sync & translate...');

  if (!l10nDir.existsSync()) {
    print('❌ Folder lib/l10n not found');
    return;
  }
  if (!baseFile.existsSync()) {
    print('❌ Base file app_ar.arb not found');
    return;
  }

  // قراءة ملف languages.dart تلقائيًا بعد التأكد من وجود مجلد l10n
  final languagesFile = File('lib/core/localization/languages.dart');
  if (languagesFile.existsSync()) {
    final content = await languagesFile.readAsString();

    // استخراج رموز اللغات من القائمة تلقائيًا مثل ['ar', 'en', 'sw', ...]
    final langCodes = RegExp(r"'code':\s*'(\w+)'")
        .allMatches(content)
        .map((m) => m.group(1)!)
        .where((code) => code != 'ar')
        .toList();

    print('🌐 Languages found in languages.dart: $langCodes');

    // ننشئ الملفات الناقصة
    for (final code in langCodes) {
      final file = File('${l10nDir.path}/app_$code.arb');
      if (!file.existsSync()) {
        print('🆕 Creating missing file: app_$code.arb');
        await file.writeAsString('{}');
      }
    }
  } else {
    print('⚠️ languages.dart not found, using detected files instead.');
  }

  // التأكد من وجود جميع الملفات المطلوبة
  final requiredLangs = ['en', 'fr', 'sw', 'ak', 'ff', 'yo', 'lg'];
  for (final code in requiredLangs) {
    final file = File('${l10nDir.path}/app_$code.arb');
    if (!file.existsSync()) {
      print('🆕 Creating missing file: app_$code.arb');
      await file.writeAsString('{}');
    }
  }

  final baseJson =
      jsonDecode(await baseFile.readAsString()) as Map<String, dynamic>;
  final arbFiles = l10nDir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.arb'))
      .toList();

  final baseKeys = baseJson.keys.where((k) => !k.startsWith('@@')).toList()
    ..sort();

  final targetLangs = arbFiles
      .map((f) => RegExp(r'app_(.+)\.arb')
          .firstMatch(f.path.split(Platform.pathSeparator).last)
          ?.group(1))
      .where((lang) => lang != null && lang != 'ar')
      .cast<String>()
      .toList();

  print('🌐 Target languages: $targetLangs');

  for (final lang in targetLangs) {
    final file = File('${l10nDir.path}/app_$lang.arb');
    if (!file.existsSync()) {
      print('⚠️ Creating new file for $lang...');
      await file.writeAsString('{}');
    }

    final fileJson =
        jsonDecode(await file.readAsString()) as Map<String, dynamic>;

    // احتفظ بـ metadata القديمة
    final meta = Map<String, dynamic>.fromEntries(
      fileJson.entries.where((e) => e.key.startsWith('@@')),
    );

    // أضف المفاتيح الناقصة
    var added = 0;
    for (final key in baseKeys) {
      if (!fileJson.containsKey(key)) {
        fileJson[key] = baseJson[key] ?? '';
        added++;
      }
    }

    // احذف المفاتيح الزائدة غير الموجودة في العربية
    final extraKeys = fileJson.keys
        .where((k) => !baseJson.containsKey(k) && !k.startsWith('@@'))
        .toList();
    for (final key in extraKeys) {
      fileJson.remove(key);
    }

    if (added > 0 || extraKeys.isNotEmpty) {
      print(
          '🔄 [$lang] Added $added new keys, removed ${extraKeys.length} extra.');
    } else {
      print('✅ [$lang] Already in sync.');
    }

    // احفظ بصيغة JSON منسقة
    final sortedKeys = fileJson.keys.where((k) => !k.startsWith('@@')).toList()
      ..sort();
    final sortedData = {...meta, for (var k in sortedKeys) k: fileJson[k]};
    await file
        .writeAsString(const JsonEncoder.withIndent('  ').convert(sortedData));

    // ترجم تلقائيًا
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

    if (result.exitCode == 0 && result.stdout.toString().contains('Translated')) {
      print('🌐 [$lang] Translation complete.');
    } else {
      print('⚠️ [$lang] Translation skipped or failed: ${result.stderr.isEmpty ? result.stdout : result.stderr}');
    }
  }

  // إصلاح مشاكل ال quotes
  print('\n🛠 Fixing single quotes...');
  for (final file in arbFiles) {
    final content = await file.readAsString();
    // استخدام regex لتجنب التكرار - استبدال الاقتباسات المفردة التي ليست جزء من اقتباس مزدوج بالفعل
    final fixed = content.replaceAllMapped(
      RegExp(r"(?<!')'(?!')"),
      (m) => "''",
    );
    await file.writeAsString(fixed);
  }
  print('✅ Quotes fixed.');

  // تشغيل gen-l10n
  print('\n📦 Generating localizations...');
  final gen = await Process.run('flutter', ['gen-l10n'], runInShell: true);
  if (gen.exitCode == 0) {
    print('✅ Localization classes generated successfully.');
  } else {
    print('❌ Error in gen-l10n: ${gen.stderr}');
  }

  // حذف أي ملفات JSON إضافية ناتجة من flutter_arb_translator
  print('\n🧹 Cleaning up temporary files...');
  final extraFiles = l10nDir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.json') && !f.path.endsWith('.arb'))
      .toList();

  for (final f in extraFiles) {
    try {
      await f.delete();
      print('🧹 Deleted temp file: ${f.path.split(Platform.pathSeparator).last}');
    } catch (e) {
      print('⚠️ Could not delete temp file: ${f.path.split(Platform.pathSeparator).last}');
    }
  }
  print('✅ Cleanup completed.');

  print('\n🎉 All languages synced, translated & generated successfully!\n');
}
