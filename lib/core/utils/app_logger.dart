import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class AppLogger {
  static bool _isCrashlyticsEnabled = false;
  static void initialize({bool enableCrashlytics = true}) {
    _isCrashlyticsEnabled = enableCrashlytics && !kDebugMode;
  }

  static void info(String message, {String? tag}) {
    final logMessage = _formatMessage(message, tag: tag, level: 'INFO');
    print('[INFO] $logMessage');
  }

  static void warning(String message, {String? tag, Object? error}) {
    final logMessage = _formatMessage(message, tag: tag, level: 'WARNING');
    print('[WARNING] $logMessage');
    if (error != null) {
      print('Error: $error');
    }

    if (_isCrashlyticsEnabled) {
      FirebaseCrashlytics.instance.log('[WARNING] $logMessage');
    }
  }

  static void error(
    String message, {
    String? tag,
    Object? error,
    StackTrace? stackTrace,
    bool sendToCrashlytics = true,
  }) {
    final logMessage = _formatMessage(message, tag: tag, level: 'ERROR');
    print('[ERROR] $logMessage');
    if (error != null) {
      print('Error: $error');
    }
    if (stackTrace != null) {
      print('StackTrace:\n$stackTrace');
    }
    if (sendToCrashlytics && _isCrashlyticsEnabled) {
      FirebaseCrashlytics.instance.recordError(
        error ?? message,
        stackTrace,
        reason: message,
        information: [if (tag != null) 'Tag: $tag'],
      );
    }
  }

  static void debug(String message, {String? tag}) {
    final logMessage = _formatMessage(message, tag: tag, level: 'DEBUG');
    print('[DEBUG] $logMessage');
  }

  static void event(String eventName, {Map<String, dynamic>? parameters}) {
    final params =
        parameters?.entries.map((e) => '${e.key}: ${e.value}').join(', ') ?? '';
    final message =
        '📊 EVENT: $eventName ${params.isNotEmpty ? "{$params}" : ""}';
    print('[EVENT] $message');

    if (_isCrashlyticsEnabled) {
      FirebaseCrashlytics.instance.log(message);
    }
  }

  static void setUserContext(String userId, {String? email, String? role}) {
    info('Setting user context: $userId', tag: 'AUTH');

    if (_isCrashlyticsEnabled) {
      FirebaseCrashlytics.instance.setUserIdentifier(userId);
      if (email != null) {
        FirebaseCrashlytics.instance.setCustomKey('user_email', email);
      }
      if (role != null) {
        FirebaseCrashlytics.instance.setCustomKey('user_role', role);
      }
    }
  }

  static void setScreenContext(String screenName) {
    debug('Screen: $screenName', tag: 'NAVIGATION');

    if (_isCrashlyticsEnabled) {
      FirebaseCrashlytics.instance.setCustomKey('current_screen', screenName);
    }
  }

  static void clearUserContext() {
    info('Clearing user context', tag: 'AUTH');

    if (_isCrashlyticsEnabled) {
      FirebaseCrashlytics.instance.setUserIdentifier('');
    }
  }

  /// تنسيق الرسالة
  static String _formatMessage(
    String message, {
    String? tag,
    required String level,
  }) {
    final timestamp = DateTime.now().toIso8601String();
    final tagStr = tag != null ? '[$tag] ' : '';
    return '[$timestamp] [$level] $tagStr$message';
  }
}
