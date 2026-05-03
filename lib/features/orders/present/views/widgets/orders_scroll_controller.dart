import 'package:flutter/widgets.dart';
import '../../bloc/orders_bloc.dart';

class OrdersScrollController {
  final ScrollController scrollController;
  final Function() onLoadMore;

  OrdersScrollController({
    required this.scrollController,
    required this.onLoadMore,
  }) {
    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 100) {
      onLoadMore();
    }
  }

  void dispose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
  }

  static void handleScrollLoadMore({
    required OrdersBloc bloc,
    required int subCategoryId,
  }) {
    bloc.state.whenOrNull(
      loaded: (ordersRes_, _) {
        try {
          bloc.add(
            OrdersEvent.loadMore(
              // subCategoryId: subCategoryId, loadMore: true
            ),
          );
        } catch (e) {}
      },
    );
  }
}
