import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: .all(16.r),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'User Information',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Gap(16.h),
            Icon(LucideIcons.user, size: 24.r),
          ],
        ),
      ),
    );
  }
}
