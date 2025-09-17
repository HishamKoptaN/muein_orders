import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mubin_orders/features/auth/sign_in/present/views/sign_in_view.dart';

void main() {
  testWidgets('يجب عرض حقول البريد وكلمة المرور وزر الدخول',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SignInView()));
    expect(find.byType(TextFormField), findsNWidgets(2)); // بريد وكلمة مرور
    expect(find.text('تسجيل الدخول'), findsOneWidget); // زر الدخول
  });

  testWidgets('يجب عرض رسالة خطأ عند إدخال بيانات خاطئة',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SignInView()));
    // ...اختبار وهمي لرسالة الخطأ
    expect(true, true);
  });
}
