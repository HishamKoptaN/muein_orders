import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBarTheme appBarTheme({required ColorScheme colorScheme}) {
  return AppBarTheme(
    backgroundColor: colorScheme.primary,
    foregroundColor: colorScheme.onPrimary,
    shadowColor: colorScheme.shadow,
    centerTitle: true,
    elevation: 2,
    scrolledUnderElevation: 4,
    toolbarHeight: 56.h,
    leadingWidth: 50.w,
    titleSpacing: 16.w,
    actionsPadding: .symmetric(horizontal: 10.w),
    iconTheme: IconThemeData(
      color: colorScheme.onPrimary,
      size: 30.r,
      opticalSize: 30.r,
    ),
    actionsIconTheme: IconThemeData(
      color: colorScheme.onPrimary.withValues(alpha: 0.9),
      size: 10.r,
    ),
    titleTextStyle: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: colorScheme.onPrimary,
    ),
    systemOverlayStyle: .light,
    shape: RoundedRectangleBorder(
      borderRadius: .only(
        bottomLeft: .circular(6.r),
        bottomRight: .circular(6.r),
      ),
    ),
  );
}
