import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../../../../cached_docs/data/datasources/local_data_src/drift/file_upload_status_extension.dart';
import '../../bloc/order_items_bloc.dart';

class OrdersFilterWidget extends StatelessWidget {
  const OrdersFilterWidget({super.key, required this.selectedStatus});
  final UploadStatus? selectedStatus;

  @override
  Widget build(BuildContext context) {
    final hasFilter = selectedStatus != null;
    return Row(
      mainAxisSize: .min,
      children: [
        if (hasFilter)
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (child, animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: IconButton(
              tooltip: 'إلغاء الفلتر',
              icon: Icon(Icons.close, size: 28.r),
              color: context.colorScheme.inverseSurface,
              style: IconButton.styleFrom(
                foregroundColor: context.colorScheme.error,
                backgroundColor: context.colorScheme.errorContainer.withValues(
                  alpha: 0.2,
                ),
                padding: .all(8.r),
              ),
              onPressed: () {
                getIt<OrderItemsBloc>().add(
                  const OrderItemsEvent.filterChanged(status: null),
                );
              },
            ),
          ),
        PopupMenuButton<UploadStatus?>(
          tooltip: 'فلترة الطلبات',
          elevation: 50,
          borderRadius: .circular(12.r),
          color: context.colorScheme.surface,
          surfaceTintColor: context.colorScheme.surfaceTint,
          shadowColor: Colors.black.withValues(alpha: 0.15),
          position: .over,
          icon: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: .all(2.r),
            decoration: BoxDecoration(
              color: hasFilter
                  ? selectedStatus!.color.withValues(alpha: 0.12)
                  : context.colorScheme.surfaceContainerHighest.withValues(
                      alpha: 0.5,
                    ),
              borderRadius: .circular(12.r),
              border: Border.all(
                color: hasFilter
                    ? selectedStatus!.color.withValues(alpha: 0.5)
                    : Colors.transparent,
                width: 1.5,
              ),
            ),
            child: Icon(
              hasFilter ? Icons.filter_alt : Icons.filter_alt_outlined,
              size: 28.r,
              color: hasFilter
                  ? selectedStatus!.color
                  : context.colorScheme.inverseSurface,
            ),
          ),
          onSelected: (status) {
            getIt<OrderItemsBloc>().add(
              OrderItemsEvent.filterChanged(status: status),
            );
          },
          itemBuilder: (context) {
            return [
              PopupMenuItem<UploadStatus?>(
                value: null,
                height: 44.h,
                child: Container(
                  padding: .symmetric(horizontal: 2.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: selectedStatus == null
                        ? context.colorScheme.primaryContainer.withValues(
                            alpha: 0.2,
                          )
                        : Colors.transparent,
                    borderRadius: .circular(8.r),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        selectedStatus == null
                            ? Icons.radio_button_checked_rounded
                            : Icons.radio_button_off_rounded,
                        color: selectedStatus == null
                            ? context.colorScheme.primary
                            : context.colorScheme.outline,
                        size: 20.r,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'كل الطلبات',
                        style: context.textTheme.labelMedium?.copyWith(
                          fontWeight: selectedStatus == null
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: selectedStatus == null
                              ? context.colorScheme.primary
                              : context.colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const PopupMenuDivider(),
              ...UploadStatus.values.map((status) {
                final isSelected = selectedStatus == status;
                return PopupMenuItem<UploadStatus?>(
                  value: status,
                  height: 44.h,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 2.h,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? status.color.withValues(alpha: 0.12)
                          : Colors.transparent,
                      borderRadius: .circular(8.r),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          isSelected
                              ? Icons.check_circle_rounded
                              : Icons.circle_outlined,
                          color: isSelected
                              ? status.color
                              : context.colorScheme.outline,
                          size: 20.r,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            status.label,
                            style: context.textTheme.labelMedium?.copyWith(
                              fontWeight: isSelected ? .bold : .normal,
                              color: isSelected
                                  ? status.color
                                  : context.colorScheme.onSurface,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Icon(
                          status.icon,
                          color: isSelected
                              ? status.color
                              : status.color.withValues(alpha: 0.6),
                          size: 18.r,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ];
          },
        ),
      ],
    );
  }
}
