import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'translated_text.dart';

class SimpleLoadingView extends StatelessWidget {
  const SimpleLoadingView({
    super.key,
    this.loadingText = 'جاري التحميل...',
    this.showProgressIndicator = true,
  });

  final String loadingText;
  final bool showProgressIndicator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003A45),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.inventory_2_outlined,
                size: 50.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 32.h),
            TrText(
              loadingText,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Almarai',
              ),
            ),

            if (showProgressIndicator) ...[
              SizedBox(height: 24.h),
              SizedBox(
                width: 30.w,
                height: 30.h,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5.w,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white.withOpacity(0.8),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
