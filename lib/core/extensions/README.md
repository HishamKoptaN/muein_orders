# App Localizations Extension

هذا الملف يحتوي على extension methods للتعامل مع `AppLocalizations` بشكل آمن مع قيم null.

## المميزات

- **حماية تلقائية من null**: جميع الدوال تعيد قيم افتراضية من اللغة الإنجليزية عند وجود null
- **نظام fallback ذكي**: إذا فشلت الترجمة الحالية، يحاول جلب القيمة من اللغة الإنجليزية تلقائياً
- **سهولة الاستخدام**: لا حاجة لاستخدام `?.` أو `??` في كل مكان
- **قيم افتراضية**: جميع القيم الافتراضية مأخوذة من ملف اللغة الإنجليزية

## كيفية العمل

1. **اللغة الحالية تعمل**: يحاول جلب القيمة من اللغة الحالية (عربية مثلاً)
2. **فشل اللغة الحالية**: يحاول جلب القيمة من اللغة الإنجليزية تلقائياً
3. **فشل اللغة الإنجليزية**: يعيد القيمة الافتراضية المحددة في الكود

## كيفية الاستخدام

بدلاً من:

```dart
final t = AppLocalizations.of(context);
Text(t?.emailHint ?? 'Email')
```

استخدم:

```dart
final t = AppLocalizations.of(context);
Text(t.emailHint) // يعيد القيمة من العربية، أو الإنجليزية، أو 'Email'
```

## التهيئة

تم إضافة التهيئة التلقائية في `main.dart`:

```dart
AppLocalizationsExtension.initializeEnglishFallback();
```

## إضافة مفاتيح جديدة

لإضافة مفتاح ترجمة جديد:

1. أضف المفتاح في `app_en.arb`
2. أضف الدالة في `app_localizations_extension.dart`:

```dart
/// Get new key with fallback
String get newKey => _getWithFallback((l) => l.newKey, 'Default Value');
```

3. استخدمه في الكود:

```dart
Text(t.newKey)
```

## مثال عملي

إذا كانت اللغة الحالية عربية ولم تحتوي على مفتاح `emailHint`:

- سيحاول جلب القيمة من اللغة الإنجليزية تلقائياً
- إذا لم توجد في الإنجليزية، سيعيد 'Email' كقيمة افتراضية
- لن يظهر null check operator error أبداً!
