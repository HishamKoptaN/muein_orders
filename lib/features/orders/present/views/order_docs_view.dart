import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../home/domain/entities/order_type_res_entity.dart';
import '../bloc/orders_bloc.dart';
import 'orders_view_controller.dart';
import 'widgets/orders_content_widget.dart';
import 'widgets/orders_filter_widget.dart';

class OrderDocsView extends StatefulWidget {
  final StatEntity stat;
  const OrderDocsView({super.key, required this.stat});
  static const String routeName = 'orders';
  @override
  State<OrderDocsView> createState() => _OrderDocsViewState();
}

class _OrderDocsViewState extends State<OrderDocsView> {
  final _controller = OrdersViewController();

  @override
  void initState() {
    super.initState();
    _controller.init(() {
      _controller.loadMoreOrders(widget.stat.subCategory?.id ?? 0);
    }, widget.stat.subCategory?.id ?? 0);
    _loadInitialOrders();
  }

  void _loadInitialOrders() {
    getIt<OrdersBloc>().add(
      OrdersEvent.started(subCategoryId: widget.stat.subCategory?.id ?? 1),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'طلبات',
        actions: [
          BlocBuilder<OrdersBloc, OrdersState>(
            builder: (context, state) {
              return OrdersFilterWidget(
                selectedStatus: state.maybeWhen(
                  loaded: (_, status) {
                    return status;
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
      body: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return OrdersContentWidget(
            state: state,
            controller: _controller.scrollController,
            selectedStatus: state.maybeWhen(
              loaded: (_, status) {
                return status;
              },
              orElse: () {
                return null;
              },
            ),
            stat: widget.stat,
          );
        },
      ),
    );
  }
}
