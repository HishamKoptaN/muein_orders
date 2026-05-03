// import 'package:flutter/material.dart';
// import '../../../../../core/di/dependency_injection.dart';
// import '../../../../home/domain/entities/order_type_res_entity.dart';
// import '../../bloc/orders_bloc.dart';
// import 'orders_scroll_controller.dart';

// class OrdersViewController {
//   final OrdersScrollController _scrollController;
//   final StatEntity stat;

//   bool _showOnlyUndocumented = false;
//   bool _showOnlyNewOrders = false;
//   bool _showOnlyPendingUploads = false;

//   OrdersViewController({
//     required OrdersScrollController scrollController,
//     required this.stat,
//   }) : _scrollController = scrollController;

//   static OrdersViewController create({
//     required StatEntity stat,
//     required VoidCallback onLoadMore,
//   }) {
//     final scrollController = OrdersScrollController(
//       scrollController: ScrollController(),
//       onLoadMore: onLoadMore,
//     );

//     return OrdersViewController(scrollController: scrollController, stat: stat);
//   }

//   void onFilterChanged(String value, VoidCallback setState) {
//     setState();
//     if (value == 'undocumented') {
//       _showOnlyUndocumented = !_showOnlyUndocumented;
//       _showOnlyNewOrders = false;
//       _showOnlyPendingUploads = false;
//     } else if (value == 'new_orders') {
//       _showOnlyNewOrders = !_showOnlyNewOrders;
//       _showOnlyUndocumented = false;
//       _showOnlyPendingUploads = false;
//     } else if (value == 'pending_uploads') {
//       _showOnlyPendingUploads = !_showOnlyPendingUploads;
//       _showOnlyUndocumented = false;
//       _showOnlyNewOrders = false;
//     }
//   }

//   void dispose() {
//     _scrollController.dispose();
//   }

//   bool get showOnlyUndocumented => _showOnlyUndocumented;
//   bool get showOnlyNewOrders => _showOnlyNewOrders;
//   bool get showOnlyPendingUploads => _showOnlyPendingUploads;
//   ScrollController get scrollController => _scrollController.scrollController;
// }
