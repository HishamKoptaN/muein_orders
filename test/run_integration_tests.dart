import 'dart:async';
import 'package:integration_test/integration_test_driver.dart';

Future<void> main() async {
  await integrationDriver(
    timeout: const Duration(minutes: 7),
    responseDataCallback: (data) async {
      // Handle test results if needed
      if (data != null) {
        // You can process test results here
        print('Test results: $data');
      }
    },
  );
}
