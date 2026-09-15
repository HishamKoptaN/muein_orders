import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../../home_features/home/domain/entities/order_type_res_entity.dart';
import '../../../domain/entities/salla_order_items_res_entity.dart';
import '../../bloc/order_items_bloc.dart';
import 'salla_order_item_card_widget.dart';

class SallaOrderItemsWidget extends StatefulWidget {
  const SallaOrderItemsWidget({
    super.key,
    required this.items,
    required this.stat,
    required this.hasNextPage,
  });

  final List<SallaOrderItemEntity> items;
  final StatEntity stat;
  final bool hasNextPage;

  @override
  State<SallaOrderItemsWidget> createState() => _SallaOrderItemsWidgetState();
}

class _SallaOrderItemsWidgetState extends State<SallaOrderItemsWidget> {
  late final ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    getIt<OrderItemsBloc>().add(
      .get(subCategoryId: widget.stat.subCategory?.id ?? 1, loadMore: false),
    );
  }

  void _onScroll() {
    if (_isBottom) {
      getIt<OrderItemsBloc>().add(
        .get(subCategoryId: widget.stat.subCategory?.id ?? 1, loadMore: true),
      );
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.5);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
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
                    '( ${widget.items.length} )',
                    textAlign: .right,
                    style: context.textTheme.titleSmall,
                  ),
                ),
                TrText(
                  widget.stat.subCategory?.name ?? '',
                  textAlign: .center,
                  style: context.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: widget.items.length,
            (context, i) {
              final item = widget.items[i];
              return SallaOrderItemCardWidget(
                item: item,
                execuationTypeId: widget.stat.id,
              );
            },
          ),
        ),
        if (widget.hasNextPage)
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
