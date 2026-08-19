import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class TokenService {
  final FirebaseAuth _firebaseAuth;
  TokenService(this._firebaseAuth);

  Future<String> getIdToken({bool forceRefresh = true}) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) {
      throw FirebaseAuthException(
        code: 'no-user',
        message: 'No authenticated user found',
      );
    }
    try {
      final idToken = await user.getIdToken(forceRefresh);
      if (idToken == null || idToken.isEmpty) {
        throw FirebaseAuthException(
          code: 'token-error',
          message: 'Failed to get Firebase ID token',
        );
      }
      log('🔥 Firebase ID Token: $idToken');
      return idToken;
    } catch (e) {
      if (e.toString().contains('atob')) {
        await Future.delayed(const Duration(milliseconds: 500));
        final retryToken = await user.getIdToken(false);
        if (retryToken != null && retryToken.isNotEmpty) {
          return retryToken;
        }
      }
      rethrow;
    }
  }
}
