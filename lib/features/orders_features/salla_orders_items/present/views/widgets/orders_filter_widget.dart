import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../cached_docs/data/datasources/local_data_src/drift/tables/docs_table.dart';
import '../../../../cached_docs/data/datasources/local_data_src/drift/file_upload_status_extension.dart';
import '../../../../orders/present/bloc/orders_bloc.dart';
import '../../bloc/order_items_bloc.dart';

class OrdersFilterWidget extends StatelessWidget {
  const OrdersFilterWidget({super.key, required this.selectedStatus});
  final UploadStatus? selectedStatus;
  void _clearFilter(BuildContext context) {
    context.read<OrderItemsBloc>().add(
      const OrderItemsEvent.filterChanged(status: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    final hasFilter = selectedStatus != null;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (hasFilter)
          IconButton(
            tooltip: 'إلغاء الفلتر',
            icon: Icon(Icons.close, size: 24.sp),
            color: const Color(0xFF323232),
            onPressed: () => _clearFilter(context),
          ),
        PopupMenuButton<UploadStatus?>(
          tooltip: 'فلترة الطلبات',
          icon: Icon(
            hasFilter ? Icons.filter_alt : Icons.filter_alt_outlined,
            size: 24.sp,
            color: hasFilter ? selectedStatus!.color : const Color(0xFF323232),
          ),
          onSelected: (status) {
            context.read<OrderItemsBloc>().add(
              OrderItemsEvent.filterChanged(status: status),
            );
          },
          itemBuilder: (context) => [
            PopupMenuItem(
              value: null,
              child: Row(
                children: [
                  Icon(
                    selectedStatus == null
                        ? Icons.radio_button_checked
                        : Icons.radio_button_off,
                    color: const Color(0xFF323232),
                    size: 20.sp,
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'كل الطلبات',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF323232),
                    ),
                  ),
                ],
              ),
            ),
            const PopupMenuDivider(),
            ...UploadStatus.values.map((status) {
              final isSelected = selectedStatus == status;
              return PopupMenuItem(
                value: status,
                child: Row(
                  children: [
                    Icon(
                      isSelected ? Icons.check_circle : Icons.circle_outlined,
                      color: status.color,
                      size: 20.sp,
                    ),
                    SizedBox(width: 12.w),
                    Icon(status.icon, color: status.color, size: 18.sp),
                    SizedBox(width: 12.w),
                    Text(
                      status.label,
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 16.sp,
                        fontWeight: isSelected
                            ? FontWeight.w700
                            : FontWeight.w400,
                        color: const Color(0xFF323232),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}
