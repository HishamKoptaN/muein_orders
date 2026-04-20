# Codemagic Integration Setup

## نظرة عامة

هذا المستند يوضح كيفية ربط Codemagic مع GitHub Actions لعملية بناء iOS تلقائية.

## المتطلبات الأساسية

### 1. حساب Codemagic
- سجل في [Codemagic](https://codemagic.io)
- أنشئ تطبيق جديد أو استخدم تطبيق موجود
- احصل على **App ID** من إعدادات التطبيق

### 2. API Token
- اذهب إلى إعدادات الحساب في Codemagic
- أنشئ API Token جديد
- احتفظ بالـ Token في مكان آمن

## إعدادات GitHub Secrets

أضف الـ Secrets التالية إلى مستودع GitHub:

```
CODEMAGIC_API_TOKEN=your_api_token_here
CODEMAGIC_APP_ID=your_app_id_here
```

### كيفية إضافة Secrets:
1. اذهب إلى مستودعك في GitHub
2. Settings → Secrets and variables → Actions
3. انقر "New repository secret"
4. أضف كل secret على حدة

## Codemagic Workflow Configuration

### 1. إعداد Workflow الأساسي
```yaml
# codemagic.yaml (في جذر المشروع)
workflows:
  ios-release:
    name: iOS Release Build
    environment:
      vars:
        FLUTTER_VERSION: 3.41.2
        BUILD_MODE: release
        EXPORT_OPTIONS: appstore
    scripts:
      - name: Setup Flutter
        script: |
          flutter channel stable
          flutter upgrade
          flutter pub get
          
      - name: Build iOS
        script: |
          cd ios
          pod install
          flutter build ios --release --no-codesign
          
      - name: Archive and Export
        script: |
          cd ios
          xcodebuild -workspace Runner.xcworkspace \
            -scheme Runner \
            -configuration Release \
            -destination generic/platform=iOS \
            -archivePath $CM_BUILD_DIR/Runner.xcarchive \
            archive
            
          xcodebuild -exportArchive \
            -archivePath $CM_BUILD_DIR/Runner.xcarchive \
            -exportOptionsPlist ExportOptions.plist \
            -exportPath $CM_BUILD_DIR/build
    
    artifacts:
      - build/ios/ipa/*.ipa
      - $CM_BUILD_DIR/build/*.ipa
```

### 2. إعدادات التوقيع (Signing)
```yaml
# في نفس codemagic.yaml
workflows:
  ios-release:
    # ... الإعدادات السابقة
    publishing:
      app_store_connect:
        apple_id: your_apple_id@email.com
        password: $APP_STORE_PASSWORD
        team_id: YOUR_TEAM_ID
        submit_to_testflight: true
        submit_to_app_store: false
```

## الاستخدام

### 1. التشغيل اليدوي
1. اذهب إلى Actions في GitHub
2. اختر "Deploy to App Store (Multi-Method)"
3. انقر "Run workflow"
4. اختر:
   - **Method**: `codemagic`
   - **Track**: `testflight` أو `appstore`
   - **Build Mode**: `release`
5. انقر "Run workflow"

### 2. التشغيل التلقائي
عند دفع إلى فرع `prod`، يمكنك تعديل الـ workflow للتشغيل التلقائي:

```yaml
# في deploy_app_store.yml
on:
  push:
    branches:
      - prod
    tags:
      - "[0-9]+.[0-9]+.[0-9]+"
  workflow_dispatch:
    # ... الإعدادات الحالية
```

## المزايا

### ✅ مزايا استخدام Codemagic:
- **بناء سحابي**: لا يحتاج موارد محلية
- **توقيع تلقائي**: إدارة شهادات التوقيع تلقائياً
- **نشر مباشر**: رفع مباشر إلى TestFlight/App Store
- **بناء متوازي**: إمكانية بناء إصدارات متعددة معاً
- **مراقبة**: واجهة مستخدم لمراقبة حالة البناء

### ⚠️ ملاحظات هامة:
- **التكلفة**: Codemagic خدمة مدفوعة
- **الاعتمادية**: يعتمد على اتصال الإنترنت وخدمات Codemagic
- **الإعدادات**: يتطلب إعدادات أولية دقيقة

## استكشاف الأخطاء

### 1. فشل تشغيل Codemagic
```bash
# تحقق من API Token
curl -H "Authorization: Bearer $CODEMAGIC_API_TOKEN" \
     https://api.codemagic.io/apps

# تحقق من App ID
curl -H "Authorization: Bearer $CODEMAGIC_API_TOKEN" \
     https://api.codemagic.io/apps/$CODEMAGIC_APP_ID
```

### 2. مشاكل التوقيع
- تأكد من إعدادات Provisioning Profile صحيحة
- تحقق من صلاحية الشهادات
- تأكد من Team ID صحيح

### 3. مشاكل البناء
- تحقق من Flutter version
- تأكد من iOS dependencies محدثة
- راجع سجلات البناء في Codemagic

## البديل المحلي

إذا فشل Codemagic، الـ workflow يستخدم البديل المحلي تلقائياً:
- يستخدم macOS runner في GitHub Actions
- يقوم بالبناء باستخدام xcodebuild مباشرة
- أبطأ ولكن أكثر تحكماً

## الخلاصة

هذا التكامل يوفر:
- 🚀 بناء سحابي احترافي
- 🔄 خيارات بديلة عند الفشل
- 📊 مراقبة وتقارير مفصلة
- 🛡️ أمان مع API tokens
- 🎯 تكامل سلس مع GitHub Actions
