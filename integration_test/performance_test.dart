import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mubin_orders/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('اختبار الأداء', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    final stopwatch = Stopwatch()..start();
    // مثال: تنفيذ إجراء معين
    // await tester.tap(find.byType(SomeButton));
    // await tester.pumpAndSettle();
    stopwatch.stop();

    print('العملية استغرقت:  [32m${stopwatch.elapsedMilliseconds} ms [0m');
  });
}
