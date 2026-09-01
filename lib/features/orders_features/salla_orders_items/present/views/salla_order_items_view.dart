import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../home_features/home/domain/entities/order_type_res_entity.dart';
import 'widgets/orders_filter_widget.dart';
import '../bloc/order_items_bloc.dart';
import 'widgets/salla_order_items_widget.dart';

class SallaOrderItemsView extends StatefulWidget {
  final StatEntity stat;
  const SallaOrderItemsView({super.key, required this.stat});
  static const String routeName = 'items';
  @override
  State<SallaOrderItemsView> createState() {
    return _SallaOrderItemsViewState();
  }
}

class _SallaOrderItemsViewState extends State<SallaOrderItemsView> {
  late final ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    getIt<OrderItemsBloc>().add(
      OrderItemsEvent.get(
        subCategoryId: widget.stat.subCategory?.id ?? 1,
        loadMore: false,
      ),
    );
  }

  void _onScroll() {
    if (_isBottom) {
      getIt<OrderItemsBloc>().add(
        OrderItemsEvent.get(
          subCategoryId: widget.stat.subCategory?.id ?? 1,
          loadMore: true,
        ),
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
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'طلبات التوثيق',
        actions: [
          BlocBuilder<OrderItemsBloc, OrderItemsState>(
            bloc: getIt<OrderItemsBloc>(),
            builder: (context, state) {
              return OrdersFilterWidget(
                selectedStatus: state.maybeWhen(
                  loaded: (orderItems, selectedUploadStatus) {
                    return selectedUploadStatus;
                  },
                  orElse: () {
                    return null;
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<OrderItemsBloc, OrderItemsState>(
        bloc: getIt<OrderItemsBloc>(),
        builder: (context, state) {
          return state.maybeMap(
            loaded: (state) {
              return SallaOrderItemsWidget(
                items: state.orderItemsRes.sallaOrderItems,
                stat: widget.stat,
                hasNextPage: state.orderItemsRes.meta.hasNextPage ?? false,
                scrollController: _scrollController,
              );
            },
            orElse: () {
              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}
