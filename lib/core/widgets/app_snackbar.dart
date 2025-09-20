import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum AppSnackBarType { success, error, warning, info }

class AppSnackBar {
  static void show({
    required BuildContext context,
    required String title,
    String? message,
    required AppSnackBarType type,
    Duration? duration,
    bool autoDismiss = true,
    VoidCallback? onTap,
  }) {
    final theme = Theme.of(context);
    late final Color backgroundColor;
    late final Color borderColor;
    late final IconData icon;
    late final Color iconColor;

    // Set colors and icon based on type
    switch (type) {
      case AppSnackBarType.success:
        backgroundColor = const Color(0xFF1E2A2F);
        borderColor = const Color(0xFF4CAF50);
        icon = Icons.check_circle_rounded;
        iconColor = const Color(0xFF4CAF50);
        break;
      case AppSnackBarType.error:
        backgroundColor = const Color(0xFF1E2A2F);
        borderColor = const Color(0xFFF44336);
        icon = Icons.error_outline_rounded;
        iconColor = const Color(0xFFF44336);
        break;
      case AppSnackBarType.warning:
        backgroundColor = const Color(0xFF1E2A2F);
        borderColor = const Color(0xFFFFC107);
        icon = Icons.warning_amber_rounded;
        iconColor = const Color(0xFFFFC107);
        break;
      case AppSnackBarType.info:
        backgroundColor = const Color(0xFF1E2A2F);
        borderColor = theme.primaryColor;
        icon = Icons.info_outline_rounded;
        iconColor = theme.primaryColor;
        break;
    }

    final snackBar = SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.fixed, // Changed to fixed for bottom positioning
      duration: duration ?? const Duration(seconds: 4),
      dismissDirection: DismissDirection.horizontal,
      content: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16.r),
          margin: EdgeInsets.only(
            bottom: 16.h, // Add some bottom margin
            left: 16.w,
            right: 16.w,
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12.r),
            border: Border(
              left: BorderSide(color: borderColor, width: 4.w),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.r,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon with background
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  color: borderColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: iconColor, size: 24.r),
              ),
              SizedBox(width: 12.w),
              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title
                    Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // Message (if provided)
                    if (message != null) ...{
                      SizedBox(height: 4.h),
                      Text(
                        message,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    },
                  ],
                ),
              ),
              // Close button
              if (autoDismiss)
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white.withOpacity(0.6),
                    size: 20.r,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                ),
            ],
          ),
        ),
      ),
    );

    // Show the snackbar
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

// Extension methods for easier usage
extension AppSnackBarExtension on BuildContext {
  void showSuccessSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.success,
      duration: duration,
    );
  }

  void showErrorSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.error,
      duration: duration,
    );
  }

  void showWarningSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.warning,
      duration: duration,
    );
  }

  void showInfoSnackBar({
    required String title,
    String? message,
    Duration? duration,
  }) {
    AppSnackBar.show(
      context: this,
      title: title,
      message: message,
      type: AppSnackBarType.info,
      duration: duration,
    );
  }
}
