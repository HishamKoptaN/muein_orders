import 'package:flutter/material.dart';

import '../../../../core/di/dependency_injection.dart';
import '../bloc/orders_bloc.dart';
import 'widgets/orders_scroll_controller.dart';

class OrdersViewController {
  late final OrdersScrollController _scrollController;
  final OrdersBloc _ordersBloc;
  OrdersScrollController get scrollController => _scrollController;
  OrdersBloc get ordersBloc => _ordersBloc;
  OrdersViewController() : _ordersBloc = getIt<OrdersBloc>();
  void init(VoidCallback onLoadMore, int subCategoryId) {
    _scrollController = OrdersScrollController(
      scrollController: ScrollController(),
      onLoadMore: onLoadMore,
    );
  }

  void dispose() {
    _scrollController.dispose();
  }

  void loadMoreOrders(int subCategoryId) {
    OrdersScrollController.handleScrollLoadMore(
      bloc: _ordersBloc,
      subCategoryId: subCategoryId,
    );
  }
}
