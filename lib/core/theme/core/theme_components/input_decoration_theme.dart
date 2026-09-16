import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecorationTheme inputDecorationTheme({required BuildContext context}) {
  return InputDecorationTheme(
    contentPadding: .symmetric(vertical: 12.h, horizontal: 4.w),
    border: OutlineInputBorder(borderRadius: .circular(8.r), borderSide: .none),
  );
}
