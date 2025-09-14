import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBarTheme appBarTheme({
  required ColorScheme colorScheme,
}) {
  return AppBarTheme(
    backgroundColor: colorScheme.primary,
    foregroundColor: colorScheme.onPrimary,
    elevation: 4,
    scrolledUnderElevation: 4,
    shadowColor: colorScheme.shadow,
    centerTitle: true,
    toolbarHeight: 56.h,
    titleSpacing: 16.w,
    iconTheme: IconThemeData(color: colorScheme.onPrimary),
    actionsIconTheme: IconThemeData(
      color: colorScheme.onPrimary,
    ),
    titleTextStyle: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: colorScheme.onPrimary,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24.r),
        topRight: Radius.circular(24.r),
      ),
    ),
  );
}
