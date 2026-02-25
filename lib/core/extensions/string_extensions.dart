import 'package:translator/translator.dart';

extension Trans on String {
  static final Map<String, String> _cache = {};
  Future<String> tr(String languageCode) async {
    if (languageCode == 'ar' || isEmpty) return this;
    final cacheKey = '${languageCode}_$this';
    try {
      final translator = GoogleTranslator();
      final translation = await translator.translate(
        this,
        from: 'ar',
        to: languageCode,
      );
      _cache[cacheKey] = translation.text;
      return translation.text;
    } catch (e) {
      return this;
    }
  }
}
