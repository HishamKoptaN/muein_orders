import 'package:flutter/foundation.dart';

class AppConfig {
  // App Information
  static const String appName = 'Mubin Orders';
  static const String appVersion = '1.3.0';
  static const int buildNumber = 4;

  // API Configuration
  static const String baseUrl =
      'https://hotpink-gnu-383634.hostingersite.com/mapi/';
  // Base URLs
  static const String apiBaseUrl = '${baseUrl}api/';
  static const String apiAuthBaseUrl = '${baseUrl}auth/';

  // API Endpoints
  static const String summary = 'summary';
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);

  // Cache Configuration
  static const int maxImageCacheSize = 100;
  static const int maxImageCacheSizeBytes = 50 * 1024 * 1024; // 50MB
  static const Duration cacheValidityDuration = Duration(hours: 24);

  // UI Configuration
  static const double defaultBorderRadius = 14.0;
  static const double defaultElevation = 6.0;
  static const double defaultPadding = 16.0;

  // Performance Configuration
  static const int maxConcurrentRequests = 3;
  static const bool enablePerformanceOverlay = kDebugMode;

  // Security Configuration
  static const bool enableCertificatePinning = kReleaseMode;
  static const Duration tokenRefreshThreshold = Duration(minutes: 5);

  // Feature Flags
  static const bool enableBiometricAuth = true;
  static const bool enablePushNotifications = true;
  static const bool enableAnalytics = kReleaseMode;
  static const bool enableCrashReporting = kReleaseMode;

  // Localization
  static const String defaultLanguage = 'ar';
  static const List<String> supportedLanguages = ['ar', 'en'];

  // Database Configuration
  static const String databaseName = 'mubin_orders.db';
  static const int databaseVersion = 1;

  // Environment specific configurations
  static bool get isProduction => kReleaseMode;
  static bool get isDevelopment => kDebugMode;
  static bool get isProfile => kProfileMode;

  // Logging Configuration
  static bool get enableDetailedLogging => !kReleaseMode;
  static bool get enableNetworkLogging => kDebugMode;

  // Get environment-specific configuration
  static Map<String, dynamic> getEnvironmentConfig() {
    return {
      'baseUrl': baseUrl,
      'enableLogging': enableDetailedLogging,
      'enableAnalytics': enableAnalytics,
      'enableCrashReporting': enableCrashReporting,
      'environment': isProduction ? 'production' : 'development',
    };
  }
}
