# Codemagic + GitHub Actions Integration

## 🚀 نظرة عامة

تم إعداد تكامل كامل بين Codemagic و GitHub Actions لبناء تطبيقات iOS تلقائياً. هذا الحل يوفر:

- 🏗️ بناء سحابي احترافي عبر Codemagic
- 🔄 تكامل سلس مع GitHub Actions
- 📊 مراقبة وتقارير مفصلة
- 🛡️ بديل محلي عند الفشل
- 🎯 خيارات متعددة للنشر

## 📁 الملفات المضافة

### 1. GitHub Workflows
- **`.github/workflows/deploy_codemagic.yml`** - Workflow رئيسي للتكامل مع Codemagic
- **`.github/workflows/deploy_app_store.yml`** - محدث ليشمل خيار Codemagic

### 2. Codemagic Configuration
- **`codemagic.yaml`** - إعدادات Codemagic للبناء والنشر
- **`docs/codemagic_setup.md`** - دليل شامل للإعداد

### 3. Setup Scripts
- **`.github/scripts/setup_codemagic.sh`** - سكربت مساعد للإعداد التلقائي

## 🛠️ الإعداد السريع

### الخطوة 1: الحصول على بيانات Codemagic

1. سجل في [Codemagic](https://codemagic.io)
2. أنشئ تطبيق جديد أو استخدم تطبيق موجود
3. احصل على **App ID** من إعدادات التطبيق
4. أنشئ **API Token** من إعدادات الحساب

### الخطوة 2: إعداد GitHub Secrets

أضف الـ Secrets التالية إلى مستودع GitHub:

```
CODEMAGIC_API_TOKEN=your_api_token_here
CODEMAGIC_APP_ID=your_app_id_here
```

### الخطوة 3: تشغيل الـ Integration

#### الطريقة الأولى: عبر GitHub Actions
1. اذهب إلى Actions في GitHub
2. اختر "Deploy to App Store (Multi-Method)"
3. اختر:
   - **Method**: `codemagic`
   - **Track**: `testflight` أو `appstore`
   - **Build Mode**: `release`
4. انقر "Run workflow"

#### الطريقة الثانية: تلقائياً عند الدفع
عند دفع إلى فرع `prod`، سيتم تشغيل البناء تلقائياً.

## 🔄 سير العمل

### 1. التحضير
- استخراج معلومات الإصدار من `pubspec.yaml`
- حساب رقم بناء فريد
- اتخاذ قرار بشأن تشغيل Codemagic

### 2. تشغيل Codemagic
- إرسال طلب بناء إلى Codemagic API
- مراقبة حالة البناء
- الحصول على روابط التنزيل عند النجاح

### 3. البديل المحلي (عند الفشل)
- استخدام macOS runner في GitHub Actions
- بناء باستخدام xcodebuild مباشرة
- أبطأ لكن أكثر تحكماً

### 4. الملخص
- عرض حالة جميع العمليات
- توفير روابط التنزيل
- إشعارات النجاح/الفشل

## 📊 المزايا

### ✅ Codemagic
- بناء سحابي سريع
- إدارة شهادات تلقائية
- نشر مباشر إلى App Store
- واجهة مستخدم للمراقبة

### ✅ GitHub Actions
- تكامل مع الـ CI/CD الحالي
- إدارة سري للكود
- مراجعة وتحكم كامل
- تكلفة أقل للبناء البديل

### ✅ البديل المحلي
- لا يعتمد على خدمات خارجية
- تحكم كامل في العملية
- مناسبة للاختبار والتطوير

## 🛠️ التخصيص

### تعديل إعدادات البناء
في `codemagic.yaml`:
```yaml
environment:
  vars:
    FLUTTER_VERSION: 3.41.2  # تعديل نسخة Flutter
    BUILD_MODE: release       # debug/profile/release
    EXPORT_OPTIONS: appstore  # appstore/ad-hoc/development
```

### تعديل خيارات النشر
في `deploy_codemagic.yml`:
```yaml
inputs:
  track:
    options:
      - testflight    # للنشر على TestFlight
      - appstore      # للنشر على App Store
  build_mode:
    options:
      - debug         # بناء للتطوير
      - profile       # بناء للاختبار
      - release       # بناء للنشر
```

## 🔍 استكشاف الأخطاء

### 1. مشاكل API Token
```bash
# اختبار التواصل مع Codemagic API
curl -H "Authorization: Bearer $CODEMAGIC_API_TOKEN" \
     https://api.codemagic.io/apps
```

### 2. مشاكل App ID
```bash
# التحقق من صحة App ID
curl -H "Authorization: Bearer $CODEMAGIC_API_TOKEN" \
     https://api.codemagic.io/apps/$CODEMAGIC_APP_ID
```

### 3. مشاكل البناء
- تحقق من سجلات GitHub Actions
- راجع سجلات البناء في Codemagic
- تأكد من إعدادات التوقيع صحيحة

## 📋 المتطلبات

### الحسابات والخدمات
- حساب GitHub مع مستودع المشروع
- حساب Codemagic (مدفوع)
- حساب Apple Developer للنشر

### الأدوات
- Git
- Curl (للاختبار)
- jq (لتحليل JSON - اختياري)

## 🔗 روابط مفيدة

- [Codemagic Documentation](https://docs.codemagic.io/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Flutter iOS Deployment](https://docs.flutter.dev/deployment/ios)

## 📞 الدعم

لأي استفسارات أو مشاكل:
1. راجع سجلات GitHub Actions
2. تحقق من واجهة Codemagic
3. ارجع إلى `docs/codemagic_setup.md` للتفاصيل

---

**🎉 مبروك! لديك الآن نظام بناء iOS احترافي ومتكامل!**
