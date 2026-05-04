import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/widgets/translated_text.dart';
import '../../../../home/domain/entities/order_type_res_entity.dart';
import '../../../domain/entities/orders_res_entity.dart';
import 'build_doc_order_card.dart';
import 'orders_empty_state_widget.dart';

class OrdersListWidget extends StatelessWidget {
  const OrdersListWidget({
    super.key,
    required this.ordersRes,
    required this.stat,
    required this.scrollController,
    required this.filterTitle,
    required this.emptyMessage,
    required this.emptyIcon,
  });

  final OrdersResEntity ordersRes;
  final StatEntity stat;
  final ScrollController scrollController;
  final String filterTitle;
  final String emptyMessage;
  final IconData emptyIcon;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: Row(
              children: [
                TrText(
                  '$filterTitle ( ${ordersRes.when(orders: (orders, meta) => orders.length, individualDocs: (docs) {
                    return docs.length;
                  })} )',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 16 / 14,
                    color: Color(0xFF757575),
                  ),
                ),
                Gap(70.w),
                TrText(
                  '${stat.subCategory?.name ?? 0} ',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    height: 16 / 14,
                    color: const Color(0xFF757575),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, i) {
              final order = ordersRes.when(
                orders: (orders, meta) {
                  return orders[i];
                },
                individualDocs: (docs) {
                  return const OrderEntity(
                    id: 0,
                    sallaOrderId: 0,
                    printedName: '',
                    executionNumber: '',
                    docs: [],
                  );
                },
              );
              return buildDocOrderCard(
                context: context,
                order: order,
                orderDocsCount: stat.id ?? 1,
                stat: stat,
              );
            },
            childCount: ordersRes.when(
              orders: (orders, meta) {
                return orders.length;
              },
              individualDocs: (docs) {
                return docs.length;
              },
            ),
          ),
        ),
        if (ordersRes.when(
          orders: (orders, meta) {
            return orders.isEmpty;
          },
          individualDocs: (docs) {
            return docs.isEmpty;
          },
        ))
          OrdersEmptyStateWidget(
            emptyMessage: emptyMessage,
            emptyIcon: emptyIcon,
          ),
        if (ordersRes.when(
          orders: (orders, meta) {
            return meta.hasNextPage ?? false;
          },
          individualDocs: (docs) {
            return false;
          },
        ))
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: const Center(child: CircularProgressIndicator()),
            ),
          ),
      ],
    );
  }
}
