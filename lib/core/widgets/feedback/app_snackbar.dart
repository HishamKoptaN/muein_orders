import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../translated_text.dart';

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
      behavior: SnackBarBehavior.floating,
      duration: duration ?? const Duration(seconds: 4),
      content: Container(
        width: 343.w,
        height: 82.h,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color(0xFF242C32),
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.34),
              blurRadius: 4.r,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 4.h,
                decoration: BoxDecoration(
                  color: borderColor, // #01E17B في حالة النجاح
                  boxShadow: [
                    BoxShadow(
                      color: borderColor.withOpacity(0.5),
                      blurRadius: 2.r, // filter: blur(2px)
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 40.r,
                        height: 40.r,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          backgroundBlendMode: BlendMode.screen,
                          gradient: RadialGradient(
                            colors: [
                              borderColor.withOpacity(0.12),
                              borderColor.withOpacity(0),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4.r),
                        decoration: const BoxDecoration(
                          color: Color(0xFF303746), // background: #303746
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          icon, // check_circle
                          color: borderColor, // #00DF80
                          size: 24.r,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TrText(
                          title,
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        if (message != null) ...[
                          TrText(
                            message,
                            style: TextStyle(
                              fontFamily: 'Almarai',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFC8C5C5),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

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
