import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mubin_orders/features/auth/sign_in/data/models/remember_me_preferences.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  late RememberMePreferences preferences;
  late MockFlutterSecureStorage mockStorage;

  setUp(() {
    mockStorage = MockFlutterSecureStorage();
    preferences = RememberMePreferences();
  });

  group('RememberMePreferences Tests', () {
    const testEmail = 'test@example.com';
    const testPassword = 'password123';

    test('حفظ بيانات تسجيل الدخول بنجاح', () async {
      // Arrange
      when(mockStorage.write(
        key: anyNamed('key'),
        value: anyNamed('value'),
      )).thenAnswer((_) async => null);

      // Act
      await preferences.saveCredentials(
        email: testEmail,
        password: testPassword,
        isEnabled: true,
      );

      // Assert
      verify(mockStorage.write(
        key: 'remember_me_email',
        value: testEmail,
      )).called(1);
      verify(mockStorage.write(
        key: 'remember_me_password',
        value: testPassword,
      )).called(1);
      verify(mockStorage.write(
        key: 'remember_me_enabled',
        value: 'true',
      )).called(1);
    });

    test('استرجاع بيانات تسجيل الدخول المحفوظة', () async {
      // Arrange
      when(mockStorage.read(key: 'remember_me_enabled'))
          .thenAnswer((_) async => 'true');
      when(mockStorage.read(key: 'remember_me_email'))
          .thenAnswer((_) async => testEmail);
      when(mockStorage.read(key: 'remember_me_password'))
          .thenAnswer((_) async => testPassword);

      // Act
      final result = await preferences.getCredentials();

      // Assert
      expect(result?.email, equals(testEmail));
      expect(result?.password, equals(testPassword));
      expect(result?.isEnabled, isTrue);
    });

    test('مسح بيانات تسجيل الدخول', () async {
      // Arrange
      when(mockStorage.delete(key: anyNamed('key')))
          .thenAnswer((_) async => null);

      // Act
      await preferences.clearCredentials();

      // Assert
      verify(mockStorage.delete(key: 'remember_me_email')).called(1);
      verify(mockStorage.delete(key: 'remember_me_password')).called(1);
      verify(mockStorage.write(
        key: 'remember_me_enabled',
        value: 'false',
      )).called(1);
    });
  });
}
