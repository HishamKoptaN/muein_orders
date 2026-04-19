# دليل إعداد Fastlane للـ iOS

## ✅ تم إنشاء الملفات التالية:

| الملف | الوصف |
|-------|--------|
| `ios/Gemfile` | تبعيات Ruby |
| `ios/fastlane/Appfile` | إعدادات التطبيق |
| `ios/fastlane/Fastfile` | أوامر Fastlane (beta, production, build_only) |
| `ios/fastlane/.env.local` | متغيرات البيئة |
| `ios/fastlane/AuthKey_G2L6LRG5PK.p8` | مفتاح API (تم نسخه) |
| `ios/fastlane/metadata/en-US/release_notes.txt` | ملاحظات الإصدار |
| `Makefile` | أوامر بناء سريعة |

---

## 🔧 الخطوات المتبقية (مهمة جداً)

### 1️⃣ تحديث ملف `.env.local`

افتح الملف `ios/fastlane/.env.local` وقم بتحديث القيم التالية:

```bash
# بريدك الإلكتروني لـ Apple Developer
APPLE_ID=your-email@example.com

# App Store Connect Issuer ID (من App Store Connect)
APP_STORE_CONNECT_ISSUER_ID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

# اختياري: ITC_TEAM_ID إذا كان لديك عدة فرق
ITC_TEAM_ID=xxxxxx
```

**كيفية الحصول على Issuer ID:**
1. اذهب إلى [App Store Connect](https://appstoreconnect.apple.com)
2. Users and Access → Integrations
3. انسخ الـ Issuer ID

---

### 2️⃣ تثبيت التبعيات

```bash
cd ios
bundle install
```

---

## 🚀 الأوامر المتاحة

### رفع نسخة تجريبية (TestFlight)
```bash
cd ios
bundle exec fastlane beta
```

أو عبر Makefile:
```bash
make beta
```

**ما يفعله هذا الأمر:**
1. يقرأ الإصدار من `pubspec.yaml`
2. يتحقق من عدم وجود نسخة مكررة على TestFlight
3. يبني التطبيق
4. يرفع إلى TestFlight

---

### رفع نسخة إلى App Store (إنتاج)
```bash
cd ios
bundle exec fastlane production
```

أو عبر Makefile:
```bash
make production
```

---

### بناء فقط (بدون رفع)
```bash
cd ios
bundle exec fastlane build_only
```

أو عبر Makefile:
```bash
make build-ipa
```

---

## 📝 ملاحظات مهمة

### قبل كل إصدار:
1. **تحديث الإصدار** في `pubspec.yaml`:
   ```yaml
   version: 1.0.0+5  # version+build_number
   ```
2. **تحديث ملاحظات الإصدار** في `ios/fastlane/metadata/en-US/release_notes.txt`

### التحقق من الإصدار:
Fastlane يتحقق تلقائياً من عدم وجود نفس الإصدار على TestFlight ويمنع الرفع المكرر.

---

## 🔍 استكشاف الأخطاء

### مشكلة: "API Key file not found"
تأكد من وجود ملف `AuthKey_G2L6LRG5PK.p8` في `ios/fastlane/`

### مشكلة: "Invalid issuer ID"
تحقق من قيمة `APP_STORE_CONNECT_ISSUER_ID` في ملف `.env.local`

### مشكلة: "Version already exists"
قم بزيادة رقم البناء (build number) في `pubspec.yaml`:
```yaml
version: 1.0.0+5  # غير 5 إلى 6
```

---

## 📁 هيكل الملفات النهائي

```
muein_orders/
├── Makefile
├── ios/
│   ├── Gemfile
│   ├── Gemfile.lock (سيتم إنشاؤه بعد bundle install)
│   └── fastlane/
│       ├── Appfile
│       ├── Fastfile
│       ├── .env.local
│       ├── AuthKey_G2L6LRG5PK.p8
│       └── metadata/
│           └── en-US/
│               └── release_notes.txt
└── pubspec.yaml
```

---

**جاهز للاستخدام! 🎉**

ما عليك سوى تحديث `.env.local` وتشغيل `bundle install` ثم `bundle exec fastlane beta`
