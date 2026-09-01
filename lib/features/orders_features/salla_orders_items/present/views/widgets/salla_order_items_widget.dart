import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/utils.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../../home_features/home/domain/entities/order_type_res_entity.dart';
import '../../../domain/entities/salla_order_items_res_entity.dart';
import 'salla_order_item_card_widget.dart';

class SallaOrderItemsWidget extends StatelessWidget {
  const SallaOrderItemsWidget({
    super.key,
    required this.items,
    required this.stat,
    required this.hasNextPage,
    required this.scrollController,
  });

  final List<SallaOrderItemEntity> items;
  final StatEntity stat;
  final bool hasNextPage;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
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
                    '( ${items.length} )',
                    textAlign: .right,
                    style: context.textTheme.titleSmall,
                  ),
                ),
                TrText(
                  stat.subCategory?.name ?? '',
                  textAlign: .center,
                  style: context.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(childCount: items.length, (
            context,
            i,
          ) {
            final item = items[i];
            return SallaOrderItemCardWidget(
              sallaOrderItemUnits: item.sallaOrderItemUnits,
              printedName: item.printedName,
            );
          }),
        ),
        if (hasNextPage)
          SliverToBoxAdapter(
            child: Padding(
              padding: .symmetric(vertical: 20.h),
              child: const Center(child: CircularProgressIndicator()),
            ),
          ),
      ],
    );
  }
}
