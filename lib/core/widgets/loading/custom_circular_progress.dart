import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircularProgress extends StatelessWidget {
  const CustomCircularProgress({super.key, this.backgroundColor, this.color});

  final Color? backgroundColor;
  final Color? color;

  @override
  Widget build(context) {
    return Center(
      child: SizedBox(
        width: 26.r,
        height: 26.r,
        child: CircularProgressIndicator(strokeCap: .round, strokeWidth: 3.r),
      ),
    );
  }
}
