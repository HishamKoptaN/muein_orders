import 'package:flutter/foundation.dart';
import '../database/shared_pref_helper.dart';
import '../database/shared_pref_keys.dart';
import '../di/dependency_injection.dart';

class SecurityManager {
  static const String _devTokenKey = 'DEV_TOKEN';

  /// Initialize security settings based on build mode
  static Future<void> initializeSecurity() async {
    if (!kReleaseMode) {
      await _setDevelopmentCredentials();
    }
  }

  /// Set development credentials (only in debug mode)
  static Future<void> _setDevelopmentCredentials() async {
    try { 
      // Only set if not already present
      final existingToken = await   SharedPrefHelper.getSecuredString(
            key: SharedPrefKeys.userToken,
          );
      if (existingToken == null || existingToken.isEmpty) {
        const devToken = String.fromEnvironment(
          _devTokenKey,
          defaultValue: '69|jwDSZvEUw3kQo4wpRYqRLUgItpfjw6LwemI5oY8zece4ae63',
        );

        await SharedPrefHelper.setSecuredString(
          key: SharedPrefKeys.userToken,
          value: devToken,
        );

        debugPrint('Development token set successfully');
      }
    } catch (e) {
      debugPrint('Failed to set development credentials: $e');
    }
  }

  /// Check if user is authenticated
  static Future<bool> isAuthenticated() async {
    try {
      final token = await SharedPrefHelper.getSecuredString(
        key: SharedPrefKeys.userToken,
      );
      return token != null && token.isNotEmpty && _isValidToken(token);
    } catch (e) {
      debugPrint('Error checking authentication: $e');
      return false;
    }
  }

  /// Validate token format (basic validation)
  static bool _isValidToken(String token) {
    // Basic token validation - should be enhanced based on your token format
    return token.length > 10 && token.contains('|');
  }

  /// Clear all authentication data
  static Future<void> clearAuthData() async {
    try {
      await SharedPrefHelper.removeData(key: SharedPrefKeys.userToken);
      // Clear other auth-related data if needed
    } catch (e) {
      debugPrint('Error clearing auth data: $e');
    }
  }

  /// Get current user token
  static Future<String?> getCurrentToken() async {
    try {
      final token = await SharedPrefHelper.getSecuredString(
        key: SharedPrefKeys.userToken,
      );
      return token;
    } catch (e) {
      debugPrint('Error getting current token: $e');
      return null;
    }
  }

  /// Set user token (for login)
  static Future<bool> setUserToken(String token) async {
    try {
      if (!_isValidToken(token)) {
        debugPrint('Invalid token format');
        return false;
      }

      await SharedPrefHelper.setSecuredString(
        key: SharedPrefKeys.userToken,
        value: token,
      );
      return true;
    } catch (e) {
      debugPrint('Error setting user token: $e');
      return false;
    }
  }

  /// Validate app integrity (can be enhanced with certificate pinning, etc.)
  static bool validateAppIntegrity() {
    // Add app integrity checks here
    // For example: certificate pinning, anti-tampering checks, etc.
    return true;
  }
}
