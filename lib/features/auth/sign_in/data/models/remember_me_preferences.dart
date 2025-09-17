import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RememberMePreferences {
  static const _storage = FlutterSecureStorage();
  static const _keyEmail = 'remember_me_email';
  static const _keyPassword = 'remember_me_password';
  static const _keyIsEnabled = 'remember_me_enabled';

  /// حفظ بيانات تسجيل الدخول
  Future<void> saveCredentials({
    required String email,
    required String password,
    required bool isEnabled,
  }) async {
    if (isEnabled) {
      await _storage.write(key: _keyEmail, value: email);
      await _storage.write(key: _keyPassword, value: password);
    } else {
      await clearCredentials();
    }
    await _storage.write(key: _keyIsEnabled, value: isEnabled.toString());
  }

  /// استرجاع بيانات تسجيل الدخول المحفوظة
  Future<RememberMeData?> getCredentials() async {
    final isEnabled = await _storage.read(key: _keyIsEnabled);
    if (isEnabled != 'true') return null;

    final email = await _storage.read(key: _keyEmail);
    final password = await _storage.read(key: _keyPassword);

    if (email == null || password == null) return null;

    return RememberMeData(
      email: email,
      password: password,
      isEnabled: true,
    );
  }

  /// مسح بيانات تسجيل الدخول المحفوظة
  Future<void> clearCredentials() async {
    await _storage.delete(key: _keyEmail);
    await _storage.delete(key: _keyPassword);
    await _storage.write(key: _keyIsEnabled, value: 'false');
  }
}

class RememberMeData {
  final String email;
  final String password;
  final bool isEnabled;

  RememberMeData({
    required this.email,
    required this.password,
    required this.isEnabled,
  });
}
