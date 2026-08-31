import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../core/widgets/translated_text.dart';
import '../../../auth/auth/present/bloc/auth_bloc.dart';

void showLogoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: .vertical(top: .circular(12.r)),
    ),
    builder: (context) {
      return Container(
        height: 200.h,
        padding: const .fromLTRB(20, 8, 20, 16),
        child: Column(
          children: [
            Container(
              width: 36.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.3),
                borderRadius: .circular(100),
              ),
            ),
            SizedBox(height: 24.h),
            TrText(
              'تسجيل الخروج من معين',
              style: context.textTheme.titleLarge?.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
            SizedBox(height: 8.h),
            TrText(
              'هل أنت متأكد أنك تريد تسجيل الخروج؟',
              style: context.textTheme.bodyLarge!.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () {
                      getIt<AuthBloc>().add(const .signedOut());
                    },
                    child: const Text('تأكيد'),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const TrText('الغاء'),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
