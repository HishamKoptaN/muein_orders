# iOS Signing Certificates Setup

## نظرة عامة
هذا المجلد يحتوي على ملفات Base64 للشهادات iOS. الملفات الحقيقية (غير مشفرة) **لا يجب** أن تُرفع للمستودع.

## هيكل الملفات

### الملفات الحساسة (خارج المستودع)
يجب أن تُحفظ في `G:\project_assets\muein\prod\ios\`:
- `AuthKey_G2L6LRG5PK.p8` - App Store Connect API Key
- `distribution.pem` - Distribution Certificate
- `private_key` - Private Key للشهادة
- `Muein_Orders_ios_app_store_1775392698.mobileprovision` - Provisioning Profile

### الملفات في المستودع (هذا المجلد)
- `.base64` files - النسخ المشفرة للإشارة فقط
- `encode_certs.ps1` - سكربت PowerShell للتشفير

## GitHub Secrets المطلوبة

| Secret Name | الوصف |
|-------------|-------|
| `IOS_CERTIFICATE_BASE64` | شهادة Distribution (p12) مشفرة |
| `IOS_CERTIFICATE_PASSWORD` | كلمة مرور الشهادة (إن وجدت) |
| `IOS_PROVISIONING_PROFILE_BASE64` | Provisioning Profile مشفر |
| `APP_STORE_CONNECT_API_KEY_BASE64` | App Store Connect API Key مشفر |
| `APP_STORE_CONNECT_KEY_ID` | مثال: `G2L6LRG5PK` |
| `APP_STORE_CONNECT_ISSUER_ID` | Issuer ID من App Store Connect |

## خطوات الإعداد

### 1. إنشاء ملف p12 من pem + private_key
```powershell
cd G:\project_assets\muein\prod\ios
openssl pkcs12 -export -out certificate.p12 -inkey private_key -in distribution.pem
```

### 2. تحويل الملفات إلى Base64
```powershell
[Convert]::ToBase64String([System.IO.File]::ReadAllBytes("G:\project_assets\muein\prod\ios\certificate.p12")) | Set-Clipboard
[Convert]::ToBase64String([System.IO.File]::ReadAllBytes("G:\project_assets\muein\prod\ios\Muein_Orders_ios_app_store_1775392698.mobileprovision")) | Set-Clipboard
[Convert]::ToBase64String([System.IO.File]::ReadAllBytes("G:\project_assets\muein\prod\ios\AuthKey_G2L6LRG5PK.p8")) | Set-Clipboard
```

### 3. إضافة Secrets في GitHub
اذهب إلى: `Settings → Secrets and variables → Actions`

## استخدام السكربت التلقائي
```powershell
.\scripts\ios_certs\encode_certs.ps1
```

## ملاحظات أمنية
- ✅ الملفات المشفرة (Base64) آمنة للمستودع
- ❌ الملفات الأصلية (p8, p12, mobileprovision) **ممنوعة** في المستودع
- ✅ GitHub Secrets آمنة و مشفرة
- ⚠️ لا تشارك الملفات الأصلية مع أي شخص

