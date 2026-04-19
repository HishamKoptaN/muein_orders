---
description: "حد أقصى لحجم الملف - 80 سطر"
---

# قاعدة حد أقصى لحجم الملف

## 1. الحد الأقصى

- **أي ملف يحتوي على كود لا يجب أن يتجاوز 80 سطر**
- يشمل ذلك: الكلاسات، الفانكشنز، الـ widgets، الـ blocs، الـ repos، إلخ

## 2. الإجراء عند تجاوز الحد

عندما يتجاوز ملف 80 سطر، يجب:

### 2.1 تقسيم المسؤوليات (Separation of Concerns)
- فصل المنطق إلى كلاسات/دوال أصغر
- كل كلاس/دالة مسؤولة عن مهمة واحدة فقط

### 2.2 إعادة الهيكلة (Refactoring)
- استخراج الـ widgets الفرعية إلى ملفات منفصلة
- فصل الـ BLoC events والـ states إلى ملفات منفصلة
- تقسيم الـ repository إلى دوال مساعدة (private methods) أو extensions

### 2.3 أمثلة على التقسيم

**مثال 1: BLoC كبير**
```
❌ before: auth_bloc.dart (120 سطر)
✅ after:
  - auth_bloc.dart (المنطق الرئيسي)
  - auth_event.dart (الأحداث)
  - auth_state.dart (الحالات)
  - auth_helpers.dart (دوال مساعدة إن وجدت)
```

**مثال 2: Widget كبير**
```
❌ before: home_screen.dart (150 سطر)
✅ after:
  - home_screen.dart (60 سطر - الهيكل الرئيسي)
  - widgets/
    - header_section.dart (25 سطر)
    - body_section.dart (30 سطر)
    - footer_section.dart (20 سطر)
```

**مثال 3: Repository كبير**
```
❌ before: order_repo_impl.dart (200 سطر)
✅ after:
  - order_repo_impl.dart (الواجهة الرئيسية - 60 سطر)
  - order_local_datasource.dart (40 سطر)
  - order_remote_datasource.dart (50 سطر)
  - order_mapper.dart (30 سطر)
```

## 3. استثناءات

الملفات التالية معفاة من هذا الحد:
- ملفات التكوين (configuration files)
- ملفات التوليد التلقائي (generated files: *.g.dart, *.freezed.dart)
- ملفات الاختبار الكبيرة (integration tests)
- ملفات الـ constants إذا كانت تحتوي على lists/maps كبيرة

## 4. الفائدة

- **سهولة القراءة**: الملف الصغير أسهل للفهم
- **سهولة الصيانة**: تعديل أقل كود = خطر أقل للأخطاء
- **إعادة الاستخدام**: المكونات الصغيرة أسهل لإعادة الاستخدام
- **الاختبار**: أسهل لكتابة اختبارات للكود المقسم

## 5. التحقق

قبل إتمام أي مهمة، تأكد أن:
- [ ] لا يوجد ملف جديد تجاوز 80 سطر
- [ ] الملفات المعدلة لا تتجاوز 80 سطر
- [ ] التقسيم منطقي ويتبع مبدأ المسؤولية الواحدة (Single Responsibility Principle)
