import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import '../loading/custom_circular_progress.dart';

class CustomBtnWidget extends StatelessWidget {
  const CustomBtnWidget({
    super.key,
    required this.text,
    this.formzSubmissionStatus,
    required this.onPressed,
    this.height,
    this.width,
    this.backgroundColor,
  });

  final String text;
  final FormzSubmissionStatus? formzSubmissionStatus;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 60.h,
      width: width ?? 332.w,
      child: ElevatedButton(
        key: const Key('signIn_button'),
        onPressed: onPressed,
        style:
            ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? const Color(0xFF83BEA8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.r),
              ),
              elevation: 0,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
            ).copyWith(
              backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
                if (backgroundColor != null) return backgroundColor!;
                if (formzSubmissionStatus?.isInProgressOrSuccess ??
                    false || formzSubmissionStatus == null) {
                  return const Color(0xFF83BEA8);
                }
                return Colors.grey;
              }),
            ),
        child: formzSubmissionStatus?.isInProgress ?? false
            ? const CustomCircularProgress()
            : Text(
                text,
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffffffff),
                ),
              ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.text,
    this.widget,
    this.backgroundColor,
    this.width,
    this.height,
    this.colorSide,
  });

  final VoidCallback onPressed;
  final String? text;
  final Widget? widget;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final Color? colorSide;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 42,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: backgroundColor),
        onPressed: onPressed,
        child: widget ?? Text(text ?? ''),
      ),
    );
  }
}
