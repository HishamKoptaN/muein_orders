import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../../home_features/home/domain/entities/order_type_res_entity.dart';
import '../../../domain/entities/order_items_res_entity.dart';
import 'salla_order_card_widget.dart';

class SallaOrderItemsWidget extends StatelessWidget {
  const SallaOrderItemsWidget({
    super.key,
    required this.items,
    required this.stat,
    required this.filterTitle,
  });

  final List<SallaOrderItemEntity> items;
  final StatEntity stat;
  final String filterTitle;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            width: .infinity,
            child: Stack(
              alignment: .center,
              children: [
                Align(
                  alignment: .centerRight,
                  child: TrText(
                    '$filterTitle ( ${items.length} )',
                    textAlign: .right,
                    style: context.textTheme.titleSmall,
                  ),
                ),
                TrText(
                  stat.subCategory?.name ?? '0',
                  textAlign: .center,
                  style: context.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, i) {
            return SallaOrderCardWidget(
              units: items[i].sallaOrderItemUnits,
              orderDocsCount: stat.id ?? 1,
              stat: stat,
            );
          }, childCount: items.length),
        ),
        // if (ordersRes.when(
        //   orders: (orders, meta) {
        //     return meta.hasNextPage ?? false;
        //   },
        //   individualDocs: (docs) {
        //     return false;
        //   },
        // ))
        //   SliverToBoxAdapter(
        //     child: Padding(
        //       padding: EdgeInsets.symmetric(vertical: 20.h),
        //       child: const Center(child: CircularProgressIndicator()),
        //     ),
        //   ),
      ],
    );
  }
}
