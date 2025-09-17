import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/models/user_data.dart';
import '../../data/models/remember_me_preferences.dart';

/// Handles user authentication including sign in with email/password,
/// social sign in, and token management.
abstract class SignInRepo {
  /// Signs in a user with email and password
  /// Returns [UserData] on success, or a [Failure] on error
  Future<Either<Failure, UserData>> signInWithEmailAndPassword({
    required String email,
    required String password,
    required bool rememberMe,
  });

  /// Gets saved credentials if "Remember Me" was enabled
  /// Returns [RememberMeData] if credentials exist, null otherwise
  Future<RememberMeData?> getSavedCredentials();

  /// Clears saved credentials from secure storage
  /// Returns [Future] that completes when credentials are cleared
  Future<void> clearSavedCredentials();

  /// Gets the current authentication token
  /// Returns token as [String] if exists, null otherwise
  Future<String?> getAuthToken();

  /// Clears the current authentication token
  /// Returns [Future] that completes when token is cleared
  Future<void> clearAuthToken();

  /// Signs out the current user
  /// Returns [Future] that completes when sign out is complete
  Future<Either<Failure, void>> signOut();
}
