import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextIconBtnWidget extends StatelessWidget {
  CustomTextIconBtnWidget({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
  });

  void Function()? onPressed;
  Widget? icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 2,
          sigmaY: 2,
        ), // backdrop-filter: blur(2px)
        child: SizedBox(
          width: 332.w, // width: 332px
          height: 60.h, // height: 60px
          child: ElevatedButton.icon(
            onPressed: onPressed,
            icon: icon,
            label: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Almarai', // الخط المحدد في Figma
                fontSize: 17.sp, // font-size: 17px
                fontWeight: FontWeight.w700, // font-weight: 700 (Bold)
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF83BEA8), // background: #83BEA8
              elevation: 0, // إلغاء الظل ليتناسب مع التصميم المسطح
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
            ),
          ),
        ),
      ),
    );
  }
}
