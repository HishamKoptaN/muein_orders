import 'dart:developer' as developer;

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// نظام تسجيل Logs مركزي للمشروع
/// يدعم:
/// - Console logs في Debug mode
/// - Firebase Crashlytics في Production
/// - Log levels: info, warning, error
class AppLogger {
  static bool _isCrashlyticsEnabled = false;

  /// تهيئة Logger (تستدعى في main.dart)
  static void initialize({bool enableCrashlytics = true}) {
    _isCrashlyticsEnabled = enableCrashlytics && !kDebugMode;
  }

  /// ✅ Log Info - للمعلومات العامة
  static void info(String message, {String? tag}) {
    final logMessage = _formatMessage(message, tag: tag, level: 'INFO');
    developer.log(
      logMessage,
      name: 'INFO',
      level: 800,
    );
  }

  /// ⚠️ Log Warning - للتحذيرات
  static void warning(String message, {String? tag, Object? error}) {
    final logMessage = _formatMessage(message, tag: tag, level: 'WARNING');
    developer.log(
      logMessage,
      name: 'WARNING',
      level: 900,
      error: error,
    );

    if (_isCrashlyticsEnabled) {
      FirebaseCrashlytics.instance.log('[WARNING] $logMessage');
    }
  }

  /// ❌ Log Error - للأخطاء (مع إرسالها لـ Crashlytics)
  static void error(
    String message, {
    String? tag,
    Object? error,
    StackTrace? stackTrace,
    bool sendToCrashlytics = true,
  }) {
    final logMessage = _formatMessage(message, tag: tag, level: 'ERROR');

    // Console log
    developer.log(
      logMessage,
      name: 'ERROR',
      level: 1000,
      error: error,
      stackTrace: stackTrace,
    );

    // Crashlytics
    if (sendToCrashlytics && _isCrashlyticsEnabled) {
      FirebaseCrashlytics.instance.recordError(
        error ?? message,
        stackTrace,
        reason: message,
        information: [
          if (tag != null) 'Tag: $tag',
        ],
      );
    }
  }

  /// 🐛 Log Debug - للـ Debug فقط (لا يُرسل لـ Crashlytics)
  static void debug(String message, {String? tag}) {
    if (kDebugMode) {
      final logMessage = _formatMessage(message, tag: tag, level: 'DEBUG');
      developer.log(
        logMessage,
        name: 'DEBUG',
        level: 700,
      );
    }
  }

  /// 📊 Log Event - لتتبع أحداث المستخدم (Analytics)
  static void event(String eventName, {Map<String, dynamic>? parameters}) {
    final params = parameters?.entries.map((e) => '${e.key}: ${e.value}').join(', ') ?? '';
    final message = '📊 EVENT: $eventName ${params.isNotEmpty ? "{$params}" : ""}';
    developer.log(message, name: 'EVENT');

    if (_isCrashlyticsEnabled) {
      FirebaseCrashlytics.instance.log(message);
    }
  }

  /// 🧑 Set User Context - لربط الأخطاء بمستخدم معين
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

  /// 🏷️ Set Screen Context - لربط الأخطاء بشاشة معينة
  static void setScreenContext(String screenName) {
    debug('Screen: $screenName', tag: 'NAVIGATION');

    if (_isCrashlyticsEnabled) {
      FirebaseCrashlytics.instance.setCustomKey('current_screen', screenName);
    }
  }

  /// 🧹 Clear User Context - عند تسجيل الخروج
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
