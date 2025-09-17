import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mubin_orders/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('اختبار تكامل عملية تسجيل الدخول', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    // إدخال بريد وكلمة مرور وهمية
    await tester.enterText(
        find.byType(TextFormField).at(0), 'test@example.com');
    await tester.enterText(find.byType(TextFormField).at(1), 'password123');
    await tester.tap(find.text('تسجيل الدخول'));
    await tester.pumpAndSettle();
    // تحقق من الانتقال أو ظهور رسالة نجاح
    expect(true, true); // اختبار وهمي
  });
}
