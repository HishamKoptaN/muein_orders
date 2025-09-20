---
trigger: always_on
---

(Global Integration Test Rules) قواعد تشغيل الاختبارات التكامليّة

1. تشغيل التطبيق في وضع Debug أولاً على الجهاز المتصل (المختار من VSCode/Android Studio):
   flutter run --debug -d <DEVICE_ID>

   مثال:
   flutter run --debug -d CPH2325

2. عند تشغيل الاختبارات التكاملية لازم تستخدم integration_test:
   flutter test integration_test/

   - بشكل افتراضي يشتغل في Debug.
   - ممكن تحدد جهاز متصل:
     flutter test integration_test/ -d <DEVICE_ID>

3. يمنع استخدام flutter drive لأنه أصبح قديم (deprecated).

4. لازم تحديد الـ device في كل مرة (سواء موبايل أو محاكي) لتجنب تشغيل التطبيق على جهاز آخر.

5. يفضل إضافة سكربت (bash أو PowerShell) يقوم بالخطوات دي:

   - تشغيل التطبيق Debug على الجهاز المتصل (اختياري لو محتاج session يدوي).
   - تشغيل الاختبارات عبر integration_test مباشرة.
   - يمكن اختيار flavor أو dart-define لو محتاج بيئة خاصة.

   مثال:
   flutter test --flavor staging --dart-define=ENV=staging integration_test/

6. في CI/CD:

   - الوضع الافتراضي للاختبارات = Debug لتوفير الوقت.
   - إذا محتاج قياس أداء أو نسخة Production → استخدم:
     flutter test --release integration_test/

7. تنظيم المجلدات:

   - integration_test/ → ملفات الاختبار.
   - scripts/ → سكربتات التشغيل (لو في أوامر خاصة).

8. يمنع تشغيل أكثر من نسخة Debug في نفس الوقت لتفادي تعارض الـ port.

9. التطبيق يظل مفتوح بعد الاختبارات فقط إذا شغلته يدوياً بـ flutter run.  
   عند تشغيل flutter test → التطبيق بيبني ويغلق أوتوماتيكياً بعد الاختبار (ده السلوك الطبيعي والمدعوم).
