class ApiConstants {
  // Base URLs
  static const String baseUrl = 'https://mapi.live90.fr/';
  static const String apiBaseUrl = '${baseUrl}api/';
  static const String apiAuthBaseUrl = '${baseUrl}auth/';

  // Auth endpoints
  static const String check = 'check';
  static const String login = 'login';
  static const String signup = 'signup';
  static const String register = 'register';
  static const String logout = 'logout';
  static const String profile = 'me';
  static const String refreshToken = 'refresh-token';

  // Other endpoints
  static const String orders = 'orders';
  static const String summary = 'summary';
  static const String docs = 'docs';
  static const String notifications = 'notifications';
  static const String externalNotifications = 'external-notifications';

  // Headers
  static const String authToken = 'auth-token';
  static const String contentType = 'Content-Type';
  static const String applicationJson = 'application/json';
  static const String authorization = 'Authorization';
  static const String acceptLanguage = 'Accept-Language';

  // Timeouts
  static const int receiveTimeout = 15000; // 15 seconds
  static const int connectTimeout = 15000; // 15 seconds
  static const int sendTimeout = 10000; // 10 seconds
}

class ApiErrors {
  // Error types
  static const String badRequestError = 'badRequestError';
  static const String noContent = 'noContent';
  static const String forbiddenError = 'forbiddenError';
  static const String unauthorizedError = 'unauthorizedError';
  static const String notFoundError = 'notFoundError';
  static const String conflictError = 'conflictError';
  static const String internalServerError = 'internalServerError';
  static const String unknownError = 'unknownError';
  static const String timeoutError = 'timeoutError';
  static const String defaultError = 'defaultError';
  static const String cacheError = 'cacheError';
  static const String noInternetError = 'noInternetError';

  // Messages
  static const String loadingMessage = 'loading_message';
  static const String retryAgainMessage = 'retry_again_message';
  static const String ok = 'Ok';
}
