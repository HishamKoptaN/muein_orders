# دليل إعداد Visual Studio Code لمشروع Flutter

## 🔧 الإعدادات المطلوبة

### 1. مزامنة الإعدادات عبر GitHub
لمزامنة إعداداتك عبر أجهزة متعددة:

1. **تفعيل Settings Sync في VS Code:**
   - اضغط `Ctrl+Shift+P`
   - ابحث عن `Settings Sync: Turn On`
   - سجل دخول بحساب GitHub أو Microsoft

2. **أو استخدم ملفات المشروع المحفوظة:**
   - جميع الإعدادات محفوظة في مجلد `.vscode/`
   - ستتم مزامنتها تلقائياً مع Git

### 2. الإضافات المطلوبة
الإضافات الأساسية محددة في `.vscode/extensions.json`:

#### إضافات Flutter & Dart:
- `dart-code.dart-code` - دعم لغة Dart
- `dart-code.flutter` - دعم Flutter
- `alexisvt.flutter-snippets` - مقاطع كود Flutter
- `nash.awesome-flutter-snippets` - مقاطع كود إضافية

#### إضافات الإنتاجية:
- `eamodio.gitlens` - أدوات Git متقدمة
- `github.copilot` - مساعد الذكي للبرمجة
- `pkief.material-icon-theme` - أيقونات جميلة

#### دعم اللغة العربية:
- `ms-ceintl.vscode-language-pack-ar` - حزمة اللغة العربية

### 3. تثبيت الإضافات تلقائياً
```bash
# في Terminal داخل VS Code
code --install-extension dart-code.dart-code
code --install-extension dart-code.flutter
code --install-extension eamodio.gitlens
```

## ⚙️ الإعدادات المهمة

### إعدادات Flutter:
- **Hot Reload تلقائي** عند الحفظ
- **تنسيق الكود تلقائياً** عند الحفظ
- **تنظيم الـ imports** تلقائياً
- **دعم Flutter UI Guides**

### إعدادات المحرر:
- **طول السطر:** 80 حرف
- **المسافات البادئة:** 2 مسافات
- **تمييز الأقواس** بالألوان
- **دعم الأحرف العربية** بدون تحذيرات

### إعدادات Git:
- **Auto-fetch** مفعل
- **GitLens** للتتبع المتقدم

## 🚀 المهام السريعة

يمكنك تشغيل المهام التالية من `Ctrl+Shift+P`:

- **Flutter: Clean** - تنظيف المشروع
- **Flutter: Get Dependencies** - تحديث التبعيات
- **Flutter: Build APK** - بناء تطبيق Android
- **Flutter: Run Tests** - تشغيل الاختبارات
- **Dart: Format Code** - تنسيق الكود

## 🔄 كيفية المزامنة

### الطريقة الأولى: Settings Sync (مستحسنة)
1. فعل Settings Sync في VS Code
2. سيتم مزامنة جميع الإعدادات والإضافات تلقائياً

### الطريقة الثانية: Git Repository
1. جميع إعدادات المشروع في مجلد `.vscode/`
2. عند clone المشروع، ستحصل على نفس الإعدادات
3. VS Code سيقترح تثبيت الإضافات المطلوبة تلقائياً

## 📱 إعدادات التشغيل والتصحيح

تم إعداد configurations متعددة في `.vscode/launch.json`:

- **Flutter (Debug)** - للتطوير العادي
- **Flutter (Profile)** - لاختبار الأداء
- **Flutter Web** - للتشغيل على المتصفح
- **Flutter Android/iOS** - لمنصات محددة

## 🎨 المظهر والثيمات

الثيمات المقترحة:
- **Material Theme** - ثيم عصري
- **GitHub Theme** - ثيم GitHub الرسمي
- **Material Icon Theme** - أيقونات جميلة للملفات

## 💡 نصائح إضافية

1. **استخدم Ctrl+Shift+P** للوصول السريع للأوامر
2. **فعل Auto Save** لحفظ تلقائي
3. **استخدم Flutter Inspector** لتصحيح UI
4. **فعل Error Lens** لرؤية الأخطاء مباشرة في الكود

---

## 🔧 استكشاف الأخطاء

### إذا لم تعمل الإضافات:
1. تأكد من تثبيت Flutter SDK
2. أعد تشغيل VS Code
3. تحقق من `Flutter Doctor` في Terminal

### إذا لم تعمل المزامنة:
1. تأكد من تسجيل الدخول في GitHub
2. تحقق من إعدادات Settings Sync
3. تأكد من رفع ملفات `.vscode/` إلى Git
