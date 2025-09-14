import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mubin_orders/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('المستخدم يستطيع تسجيل الدخول', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    // قم بتعديل المفاتيح حسب تطبيقك
    await tester.enterText(find.byKey(Key('emailField')), 'test@example.com');
    await tester.enterText(find.byKey(Key('passwordField')), 'password123');
    await tester.tap(find.byKey(Key('loginButton')));
    await tester.pumpAndSettle();

    expect(find.text('مرحباً'), findsOneWidget);
  });
}
