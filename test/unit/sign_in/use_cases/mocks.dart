import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/mockito.dart';

import 'package:mubin_orders/features/auth/sign_in/domain/repo/sign_in_repo.dart';

// Mock for SignInRepository
class MockSignInRepository extends Mock implements SignInRepo {}

// Mock for UserCredential with minimal implementation
class MockUserCredential extends Mock implements UserCredential {
  final MockUser _user = MockUser();
  
  @override
  User? get user => _user;
  
  @override
  AdditionalUserInfo? get additionalUserInfo => null;
  
  @override
  AuthCredential? get credential => null;
}

// Minimal mock for User
class MockUser extends Mock implements User {
  @override
  Future<String> getIdToken([bool forceRefresh = false]) async => 'mock_token';
  
  // Add other required methods as needed
  @override
  String get uid => 'test_uid';
  
  @override
  String? get email => 'test@example.com';
  
  @override
  bool get emailVerified => true;
  
  @override
  bool get isAnonymous => false;
  
  @override
  Future<void> delete() async {}
  
  @override
  Future<String> getIdTokenResult([bool forceRefresh = false]) async => '';
  
  @override
  Future<UserCredential> linkWithCredential(AuthCredential credential) async => MockUserCredential();
  
  @override
  Future<ConfirmationResult> linkWithPhoneNumber(
    String phoneNumber, 
    RecaptchaVerifier? verifier,
  ) async => throw UnimplementedError();
  
  // Add other required methods with minimal implementations
  @override
  Future<UserCredential> reauthenticateWithCredential(AuthCredential credential) => 
      Future.value(MockUserCredential());
  
  @override
  Future<void> reload() => Future.value();
  
  @override
  Future<void> sendEmailVerification([ActionCodeSettings? actionCodeSettings]) => Future.value();
  
  @override
  Future<User> unlink(String providerId) => Future.value(this);
  
  @override
  Future<void> updateEmail(String newEmail) => Future.value();
  
  @override
  Future<void> updatePassword(String newPassword) => Future.value();
  
  @override
  Future<void> updatePhoneNumber(PhoneAuthCredential phoneCredential) => Future.value();
  
  @override
  Future<void> updateDisplayName(String? displayName) => Future.value();
  
  @override
  Future<void> updatePhotoURL(String? photoURL) => Future.value();
  
  @override
  Future<void> verifyBeforeUpdateEmail(
    String newEmail, [
    ActionCodeSettings? actionCodeSettings,
  ]) => Future.value();
}
