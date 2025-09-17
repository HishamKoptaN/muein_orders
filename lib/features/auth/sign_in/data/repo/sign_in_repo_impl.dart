import 'dart:developer' as developer;

import 'package:dartz/dartz.dart' as dartz;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/models/user_data.dart';
import '../../../../../core/storage/secure_storage_service.dart';
import '../../domain/repo/sign_in_repo.dart';
import '../models/remember_me_preferences.dart';

@LazySingleton(as: SignInRepo)
class SignInRepoImpl implements SignInRepo {
  final FirebaseAuth _auth;
  final RememberMePreferences _preferences;
  final FirebaseMessaging _firebaseMessaging;
  final SecureStorageService _secureStorage;

  @factoryMethod
  SignInRepoImpl(
    this._auth,
    this._preferences,
    this._firebaseMessaging,
    this._secureStorage,
  );

  @override
  Future<dartz.Either<Failure, UserData>> signInWithEmailAndPassword({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    try {
      // 1. Sign in with Firebase
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // 2. Get the Firebase ID token
      final idToken = await userCredential.user?.getIdToken();
      if (idToken == null) {
        return dartz
            .left(const ServerFailure(message: 'Failed to get ID token'));
      }

      // 3. Save remember me preference
      await _preferences.saveCredentials(
        email: email,
        password: password,
        isEnabled: rememberMe,
      );
      if (rememberMe) {
        await _preferences.saveCredentials(
          email: email,
          password: password,
          isEnabled: rememberMe,
        );
      } else {
        await _preferences.clearCredentials();
      }

      // 4. Get FCM token
      final fcmToken = await _firebaseMessaging.getToken();
      if (fcmToken == null) {
        return dartz
            .left(const ServerFailure(message: 'Failed to get FCM token'));
      }

      // 5. Save tokens to secure storage
      await _secureStorage.save(key: 'auth_token', value: idToken);
      await _secureStorage.save(key: 'fcm_token', value: fcmToken);

      // 6. Return success with the token data
      // Return success with the token data
      return dartz.right(UserData(token: idToken));
    } on FirebaseAuthException catch (e) {
      return dartz
          .left(ServerFailure(message: e.message ?? 'Authentication failed'));
    } catch (e) {
      developer.log('Sign in error: $e', name: 'SignInRepoImpl');
      return dartz
          .left(const ServerFailure(message: 'An unexpected error occurred'));
    }
  }

  @override
  Future<RememberMeData?> getSavedCredentials() async =>
      await _preferences.getCredentials();

  @override
  Future<void> clearSavedCredentials() => _preferences.clearCredentials();

  @override
  Future<String?> getAuthToken() => _secureStorage.read('auth_token');

  @override
  Future<void> clearAuthToken() => _secureStorage.delete('auth_token');

  @override
  Future<dartz.Either<Failure, void>> signOut() async {
    try {
      await Future.wait([
        _auth.signOut(),
        _secureStorage.delete('auth_token'),
        _secureStorage.delete('fcm_token'),
      ]);
      return dartz.right(null);
    } catch (e) {
      developer.log('Sign out error: $e', name: 'SignInRepoImpl');
      return dartz.left(const ServerFailure(message: 'Failed to sign out'));
    }
  }
}
