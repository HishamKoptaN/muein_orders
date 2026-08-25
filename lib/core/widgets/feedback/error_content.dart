import 'package:flutter/material.dart';

import '../../theme/core/extensions/theme_ext.dart';
import '../translated_text.dart';

class ErrorContent extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  final String? retryText;
  final IconData? icon;
  final double? iconSize;
  final bool showRetryButton;
  final Color? iconColor;
  final Color? textColor;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final double? buttonBorderRadius;

  const ErrorContent({
    super.key,
    required this.message,
    this.onRetry,
    this.retryText,
    this.icon,
    this.iconSize,
    this.showRetryButton = true,
    this.iconColor,
    this.textColor,
    this.buttonColor,
    this.buttonTextColor,
    this.buttonBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon ?? Icons.error_outline,
            size: iconSize ?? 64,
            color: iconColor ?? context.colorScheme.error,
          ),
          const SizedBox(height: 16),
          TrText(
            message,
            overflow: TextOverflow.fade,
            style: context.textTheme.bodyLarge?.copyWith(
              color: textColor ?? context.colorScheme.error,
            ),
            textAlign: TextAlign.center,
          ),
          if (showRetryButton && onRetry != null) ...[
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor ?? context.colorScheme.primary,
                foregroundColor:
                    buttonTextColor ?? context.colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(buttonBorderRadius ?? 12),
                ),
              ),
              child: TrText(retryText ?? 'Retry'),
            ),
          ],
        ],
      ),
    );
  }
}
