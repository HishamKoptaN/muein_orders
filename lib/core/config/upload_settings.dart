class UploadSpeedSettings {
  static const bool enableSlowMode = true;
  static const int initialDelaySeconds = 30;
  static const int progressDelayMs = 1500;
  static const int uploadDelaySeconds = 25;
  static const int successDelaySeconds = 30;
  static const bool enableDetailedLogging = true;
  static const bool developerMode = true;
  static const double debugCancelPercentage = 85.0;
  static const bool enableSimulatedProgress = true;
  static const int progressSimulationSpeed = 3000;

  static const int uploadSpeedKbps = 1;

  static const int chunkSizeBytes = 1024;

  @Deprecated(
    'استخدم SlowestUploadInterceptor.createProgressCallback() بدلاً من ذلك',
  )
  static const bool enableDioSlowUpload = false;

  @Deprecated(
    'استخدم SlowestUploadInterceptor.createProgressCallback() بدلاً من ذلك',
  )
  static const int dioUploadDelayMs = 300;
}
