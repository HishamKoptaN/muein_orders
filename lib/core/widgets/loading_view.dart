import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'translated_text.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  static const String routeName = 'loading';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003A45),
      body: Container(
        width: .infinity,
        height: .infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.inventory_2_outlined,
                size: 60.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 32.h),
            TrText(
              'جاري التحميل...',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontWeight: .w500,
              ),
            ),
            SizedBox(height: 24.h),
            SizedBox(
              width: 40.w,
              height: 40.h,
              child: CircularProgressIndicator(
                strokeWidth: 3.w,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white.withValues(alpha: 0.8),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            TrText(
              'الرجاء الانتظار قليلاً',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
