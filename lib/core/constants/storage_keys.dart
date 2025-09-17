/// Storage keys for secure storage
///
/// All keys used for secure storage should be defined here
/// to prevent typos and ensure consistency.
class StorageKeys {
  const StorageKeys._();

  // Authentication
  static const String authToken = 'auth_token';
  static const String refreshToken = 'refresh_token';
  static const String isFirstLaunch = 'is_first_launch';
  
  // User Data
  static const String userId = 'user_id';
  static const String userEmail = 'user_email';
  static const String userName = 'user_name';
  static const String userPhone = 'user_phone';
  static const String userRole = 'user_role';
  static const String userProfileImage = 'user_profile_image';
  
  // App Settings
  static const String rememberMe = 'remember_me';
  static const String themeMode = 'theme_mode';
  static const String languageCode = 'language_code';
  static const String countryCode = 'country_code';
  
  // API & Data
  static const String apiLastSync = 'api_last_sync';
  static const String selectedBranchId = 'selected_branch_id';
  static const String selectedBranchName = 'selected_branch_name';
  
  // Notifications
  static const String fcmToken = 'fcm_token';
  static const String notificationsEnabled = 'notifications_enabled';
  static const String lastNotificationCheck = 'last_notification_check';
  
  // Cart & Orders
  static const String cartItems = 'cart_items';
  static const String lastOrderId = 'last_order_id';
  static const String pendingOrdersCount = 'pending_orders_count';
  
  /// List of all storage keys for easy clearing
  static const List<String> allKeys = [
    authToken,
    refreshToken,
    userId,
    userEmail,
    rememberMe,
  ];
}
