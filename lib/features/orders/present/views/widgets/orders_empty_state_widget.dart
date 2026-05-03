import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/translated_text.dart';

class OrdersEmptyStateWidget extends StatelessWidget {
  const OrdersEmptyStateWidget({
    super.key,
    required this.emptyMessage,
    required this.emptyIcon,
  });

  final String emptyMessage;
  final IconData emptyIcon;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.h),
        child: Center(
          child: Column(
            children: [
              Icon(emptyIcon, size: 48.sp, color: Colors.green),
              SizedBox(height: 16.h),
              TrText(
                emptyMessage,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF757575),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
