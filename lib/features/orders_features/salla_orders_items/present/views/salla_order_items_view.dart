import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../home_features/home/domain/entities/order_type_res_entity.dart';
import '../../domain/entities/salla_order_items_res_entity.dart';
import 'widgets/orders_filter_widget.dart';
import '../bloc/order_items_bloc.dart';
import 'widgets/salla_order_items_widget.dart';

class SallaOrderItemsView extends StatefulWidget {
  final StatEntity stat;
  const SallaOrderItemsView({super.key, required this.stat});
  static const String routeName = 'items';

  @override
  State<SallaOrderItemsView> createState() => _SallaOrderItemsViewState();
}

class _SallaOrderItemsViewState extends State<SallaOrderItemsView> {
  @override
  void initState() {
    super.initState();
    getIt<OrderItemsBloc>().add(.get(page: 1, executionTypeId: widget.stat.id));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: const Text('طلبات التوثيق'),
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
              );
            },
            orElse: () {
              return Skeletonizer(
                child: SallaOrderItemsWidget(
                  items: List.generate(10, (_) {
                    return const SallaOrderItemEntity();
                  }),
                  stat: const StatEntity(),
                  hasNextPage: false,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
