import 'package:flutter_test/flutter_test.dart';

int add(int a, int b) => a + b;

void main() {
  test('add returns the sum of two numbers', () {
    expect(add(2, 3), 5);
  });
}
