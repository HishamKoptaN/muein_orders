import 'package:get_storage/get_storage.dart';
import 'package:translator/translator.dart';

class AutoLocalizer {
  static final _storage = GetStorage('translations_cache');
  static final Map<String, String> _memoryCache = {};
  static final _translator = GoogleTranslator();

  static Future<String> translate(String text, String langCode) async {
    if (langCode == 'ar' || text.isEmpty) return text;
    final String storageKey = '${langCode}_$text';
    if (_memoryCache.containsKey(storageKey)) {
      return _memoryCache[storageKey]!;
    }
    if (_storage.hasData(storageKey)) {
      final String cachedText = _storage.read(storageKey);
      _memoryCache[storageKey] = cachedText;
      return cachedText;
    }
    try {
      final translation = await _translator.translate(
        text,
        from: 'ar',
        to: langCode,
      );
      final String translatedText = translation.text;
      await _storage.write(storageKey, translatedText);
      _memoryCache[storageKey] = translatedText;
      return translatedText;
    } catch (e) {
      return text;
    }
  }
  static Future<void> clearCache() async {
    await _storage.erase();
    _memoryCache.clear();
  }
}
