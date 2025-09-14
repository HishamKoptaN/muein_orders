import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MyButton has a label', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ElevatedButton(
            onPressed: () {},
            child: Text('اضغط هنا'),
          ),
        ),
      ),
    );
    expect(find.text('اضغط هنا'), findsOneWidget);
  });
}
