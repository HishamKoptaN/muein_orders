import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../features/orders/domain/entities/orders_res_entity.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';

class ModernOrderCard extends StatelessWidget {
  final OrderEntity order;
  final VoidCallback onTap;

  const ModernOrderCard({super.key, required this.order, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final statusColor = _getStatusColor((order.status ?? '').toString());
    final statusIcon = _getStatusIcon((order.status ?? '').toString());
    final isPhotographed = order.isDistributionPhotographed ?? false;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Status Bar
          Container(
            height: 4.h,
            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.r),
                bottomRight: Radius.circular(16.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Row
                    Row(
                      children: [
                        // Order Icon
                        Container(
                          width: 48.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                            color: isPhotographed
                                ? AppColors.success.withOpacity(0.1)
                                : AppColors.warning.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Icon(
                            statusIcon,
                            color: statusColor,
                            size: 24.sp,
                          ),
                        ),
                        Gap(12.w),

                        // Order Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                order.printedName ?? '',
                                style: AppTextStyles.titleMedium.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primary,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Gap(4.h),
                              Text(
                                '${t.execution_number}: ${order.executionNum ?? "---"}',
                                style: AppTextStyles.bodySmall.copyWith(
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Status Badge
                        _buildStatusBadge(isPhotographed),
                      ],
                    ),

                    Gap(16.h),

                    // Order Details
                    Container(
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Row(
                        children: [
                          _buildDetailItem(
                            icon: Icons.location_on_outlined,
                            label: t.location,
                            value: order.locationLink?.toString() ?? '---',
                          ),
                          Gap(16.w),
                          _buildDetailItem(
                            icon: Icons.numbers_outlined,
                            label: t.order_id,
                            value: order.id?.toString() ?? '---',
                          ),
                        ],
                      ),
                    ),

                    Gap(12.h),

                    // Action Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          isPhotographed
                              ? t.show_documentations
                              : t.add_documentation,
                          style: AppTextStyles.labelMedium.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16.sp,
                          color: AppColors.primary,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'completed':
      case 'مكتمل':
        return AppColors.success;
      case 'pending':
      case 'معلق':
        return AppColors.warning;
      case 'cancelled':
      case 'ملغي':
        return AppColors.error;
      case 'in_progress':
      case 'قيد التنفيذ':
        return AppColors.info;
      default:
        return AppColors.primary;
    }
  }

  IconData _getStatusIcon(String status) {
    switch (status.toLowerCase()) {
      case 'completed':
      case 'مكتمل':
        return Icons.check_circle_outline;
      case 'pending':
      case 'معلق':
        return Icons.schedule_outlined;
      case 'cancelled':
      case 'ملغي':
        return Icons.cancel_outlined;
      case 'in_progress':
      case 'قيد التنفيذ':
        return Icons.sync_outlined;
      default:
        return Icons.local_shipping_outlined;
    }
  }

  Widget _buildStatusBadge(bool isPhotographed) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: isPhotographed ? AppColors.success : AppColors.warning,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        isPhotographed ? 'مكتمل' : 'معلق',
        style: AppTextStyles.labelSmall.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildDetailItem({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Expanded(
      child: Row(
        children: [
          Icon(icon, size: 16.sp, color: AppColors.primary),
          Gap(6.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTextStyles.labelSmall.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  value,
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
