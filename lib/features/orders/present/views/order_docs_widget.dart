import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../bloc/orders_bloc.dart';
import 'orders_view.dart';
import 'widgets/build_doc_order_card.dart';
import 'widgets/shimmer/shimmer_client_row.dart';

class OrderDocsWidget extends StatelessWidget {
  const OrderDocsWidget({
    super.key,
    required this.widget,
    required this.selectedTab,
    required this.t,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final OrderDocsView widget;
  final int selectedTab;
  final AppLocalizations t;
  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (orders, hasMore) {
              return ListView.builder(
                controller: _scrollController,
                shrinkWrap: true,
                itemCount: orders?.length,
                itemBuilder: (context, index) {
                  final order = orders?[index];
                  return buildDocOrderCard(
                    context: context,
                    order: order ?? OrderEntity(),
                    orderDocsCount: widget.stat.id ?? 1,
                    package: widget.stat,
                  );
                },
              );
            },
            loading: () {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) =>
                    ShimmerClientRow(height: 100.h),
              );
            },
            failure: (e) {
              return Text(
                e.error ?? '',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              );
            },
            orElse: () {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) =>
                    ShimmerClientRow(height: 100.h),
              );
            },
          );
        },
      ),
    );
  }
}
