# إعداد GitHub Secrets للـ iOS Fastlane

## 🔐 Secrets المطلوبة

لتشغيل workflow بنجاح، يجب إضافة هذه Secrets إلى مستودع GitHub:

### الخطوة 1: الذهاب إلى إعدادات المستودع

1. افتح المستودع على GitHub
2. اذهب إلى: **Settings** → **Secrets and variables** → **Actions**
3. انقر على **New repository secret**

---

## 📋 قائمة Secrets المطلوبة

| Secret Name | القيمة | كيفية الحصول عليها |
|-------------|--------|-------------------|
| `APP_STORE_CONNECT_KEY_ID` | `G2L6LRG5PK` | من App Store Connect → Users & Access → Keys |
| `APP_STORE_CONNECT_ISSUER_ID` | `487919a3-70a5-4992-af37-d75eb388c881` | من App Store Connect → Integrations |
| `APP_STORE_CONNECT_API_KEY_BASE64` | (base64 encoded) | انظر الأسفل 👇 |
| `APPLE_ID` | `heshamkoptan@email.com` | بريد Apple Developer |
| `TEAM_ID` | `5493DS73C7` | من Apple Developer Portal |
| `ITC_TEAM_ID` | `5493DS73C7` | نفس TEAM_ID (عادةً) |
| `APP_IDENTIFIER` | `com.muein.orders` | Bundle Identifier |

---

## 🔑 إنشاء `APP_STORE_CONNECT_API_KEY_BASE64`

هذا أهم Secret ويتطلب ترميز Base64:

### على Windows (PowerShell):
```powershell
[Convert]::ToBase64String([System.IO.File]::ReadAllBytes("G:\flutter_projects\muein_orders\AuthKey_G2L6LRG5PK.p8")) | Set-Clipboard
```

### على Mac:
```bash
base64 -i ~/path/to/AuthKey_G2L6LRG5PK.p8 | pbcopy
```

### على Linux:
```bash
base64 -w 0 ~/path/to/AuthKey_G2L6LRG5PK.p8 | xclip -selection clipboard
```

**ثم ألصق النتيجة في GitHub Secret:**

---

## ✅ التحقق من الإعداد

بعد إضافة جميع Secrets، يمكنك اختبار workflow:

### الطريقة 1: تشغيل يدوي
1. اذهب إلى **Actions** tab في GitHub
2. اختر **"iOS Release - Fastlane (API Key)"**
3. انقر **Run workflow**
4. اختر القناة (TestFlight أو App Store)
5. انقر **Run workflow**

### الطريقة 2: تشغيل تلقائي
عند push إلى فرع `prod` مع تغيير في `pubspec.yaml` أو `ios/` أو `lib/`

---

## 🚀 أوامر Workflow

### رفع إلى TestFlight:
```yaml
# يعمل تلقائياً على push إلى prod
# أو يدوياً عبر GitHub Actions
```

### رفع إلى App Store:
1. اذهب إلى Actions
2. اختر workflow
3. اختر `track: appstore`
4. Run workflow

---

## ⚠️ ملاحظات مهمة

### قبل أول إصدار:
1. تأكد من وجود التطبيق في App Store Connect
2. أكمل الإعداد الأولي (الإصدار اليدوي الأول)
3. تأكد من صحة جميع Certificates و Provisioning Profiles

### مشاكل شائعة:

#### "API Key not found"
- تأكد من أن `APP_STORE_CONNECT_API_KEY_BASE64` صحيح
- تأكد من أن `APP_STORE_CONNECT_KEY_ID` يطابق اسم ملف الـ .p8

#### "Invalid issuer ID"
- تحقق من `APP_STORE_CONNECT_ISSUER_ID` في App Store Connect

#### "Version already exists"
- قم بزيادة رقم البناء في `pubspec.yaml`
- ارفع commit جديد إلى `prod`

---

## 📁 هيكل الملفات النهائي

```
muein_orders/
├── .github/
│   └── workflows/
│       ├── ios_fastlane_apikey.yml    ✅ (تم إنشاؤه)
│       └── GITHUB_SECRETS_SETUP.md    ✅ (هذا الملف)
├── ios/
│   └── fastlane/
│       ├── Appfile
│       ├── Fastfile
│       ├── .env.local
│       └── AuthKey_G2L6LRG5PK.p8
└── pubspec.yaml
```

---

## 🎯 الخطوات السريعة

1. ✅ نسخ الـ Base64 من ملف `AuthKey_G2L6LRG5PK.p8`
2. ✅ إضافة جميع Secrets إلى GitHub
3. ✅ دفع تغيير إلى `prod` فرع
4. ✅ مراقبة Actions tab للنتيجة

---

**جاهز للاستخدام! 🚀**

بمجرد إضافة Secrets، سيعمل التوزيع التلقائي عند كل push إلى `prod`.
