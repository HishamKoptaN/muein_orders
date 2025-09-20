import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

const apiUrl = 'https://libretranslate.com/translate';

/// 🔹 اللغات اللي عايز تدعمها
final targetLocales = {
  'ar': 'app_ar.arb',
  'sw-KE': 'app_sw_KE.arb',
  'sw-TZ': 'app_sw_TZ.arb',
  'lg-UG': 'app_lg_UG.arb',
};

Future<void> main() async {
  const arbDir = 'lib/l10n';
  final enFile = File('$arbDir/app_en.arb');

  if (!enFile.existsSync()) {
    print('❌ ملف app_en.arb غير موجود');
    return;
  }

  // اقرأ ملف الإنجليزي
  final enContent = json.decode(await enFile.readAsString());
  final Map<String, dynamic> enTranslations = Map.from(enContent)
    ..removeWhere((k, v) => k.startsWith('@@'));

  for (final entry in targetLocales.entries) {
    final langCode = entry.key;
    final fileName = entry.value;
    final outFile = File('$arbDir/$fileName');

    Map<String, dynamic> existing = {};
    if (outFile.existsSync()) {
      existing = json.decode(await outFile.readAsString());
    }

    // حافظ على الميتاداتا
    final translated = Map<String, dynamic>.from(existing);
    translated['@@locale'] = langCode;
    translated['@@context'] =
        'Generated/Updated automatically by translate.dart';

    // شيك على كل مفتاح
    for (final key in enTranslations.keys) {
      if (key.startsWith('@@')) continue;

      if (!translated.containsKey(key)) {
        final text = enTranslations[key];
        if (text is String) {
          print('➕ ترجمة جديدة ($key) للغة $langCode');
          translated[key] = await _translateText(text, langCode) ?? text;
        }
      }
    }

    // اكتب الملف
    await outFile.writeAsString(
      const JsonEncoder.withIndent('  ').convert(translated),
    );

    print('✅ تم تحديث $fileName');
  }
}

Future<String?> _translateText(String text, String targetLang) async {
  try {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'q': text,
        'source': 'en',
        'target': targetLang.split('-')[0], // sw-KE → sw
        'format': 'text',
      }),
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return body['translatedText'];
    } else {
      print('⚠️ فشل الترجمة: $text (${response.statusCode})');
      return null;
    }
  } catch (e) {
    print('⚠️ خطأ أثناء الترجمة: $e');
    return null;
  }
}
