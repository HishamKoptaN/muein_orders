import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mubin_orders/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('تجربة فتح التطبيق', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    // عدل اسم الصفحة الرئيسية حسب تطبيقك
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
