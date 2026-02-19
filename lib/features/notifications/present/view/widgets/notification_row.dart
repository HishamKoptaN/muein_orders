import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../domain/entities/notification_entity.dart';

class NotificationRow extends StatelessWidget {
  final NotificationEntity item;
  const NotificationRow({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: FaIcon(
              FontAwesomeIcons.bell,
              color: AppColors.brandMint,
              size: 24.w,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    color: const Color(0xFF222741),
                    fontSize: 20.sp,
                  ),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 7),
                Text(
                  item.createdAt,
                  style: TextStyle(
                    color: const Color(0xFFA8A8A9),
                    fontSize: 15.h,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
