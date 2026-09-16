import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBarTheme appBarTheme({required ColorScheme colorScheme}) {
  return AppBarTheme(
    centerTitle: true,
    toolbarHeight: 56.h,
    leadingWidth: 50.w,
    titleSpacing: 16.w,
    actionsPadding: .symmetric(horizontal: 10.w),
    iconTheme: IconThemeData(size: 30.r, opticalSize: 30.r),
    actionsIconTheme: IconThemeData(size: 10.r),
    systemOverlayStyle: .dark,
    shape: RoundedRectangleBorder(
      borderRadius: .only(
        bottomLeft: .circular(6.r),
        bottomRight: .circular(6.r),
      ),
    ),
  );
}
