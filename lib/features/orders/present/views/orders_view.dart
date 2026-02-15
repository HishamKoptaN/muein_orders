import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../home/domain/entities/order_type_res_entity.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../bloc/orders_bloc.dart';
import 'widgets/build_order_card.dart';
import 'widgets/orders_tabs .dart';
import 'widgets/shimmer/shimmer_client_row.dart';

class OrdersView extends StatefulWidget {
  StatEntity stat;
  OrdersView({super.key, required this.stat});

  static const String routeName = 'orders';
  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  final ScrollController _scrollController = ScrollController();
  int selectedTab = 1;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  void _onTabSelected(int index) {
    setState(() => selectedTab = index);
    context.read<OrdersBloc>().add(
      OrdersEvent.getOrders(
        subCategoryId: widget.stat.id ?? 1,
        loadMore: false,
        isQuranPhotographed: selectedTab == 0,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<OrdersBloc>().add(
      OrdersEvent.getOrders(
        subCategoryId: widget.stat.subCategory?.id ?? 0,
        loadMore: false,
        isQuranPhotographed: selectedTab == 0,
      ),
    );
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100) {
      context.read<OrdersBloc>().state.whenOrNull(
        loaded: (clients, hasMore) {
          if (hasMore == true) {
            context.read<OrdersBloc>().add(
              OrdersEvent.getOrders(
                subCategoryId: widget.stat.subCategory?.id ?? 0,
                loadMore: true,
                isQuranPhotographed: selectedTab == 0,
              ),
            );
          }
        },
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      appBar: CustomAppBar(title: t.orders),
      body: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return Column(
            children: [
              const SizedBox(height: 16),
              OrdersTabs(onTap: _onTabSelected, t: t, selectedTab: selectedTab),
              const SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    width: 69,
                    height: 18,
                    child: Text(
                      '${t.orders} ( ${state.maybeWhen(loaded: (orders, hasMore) {
                        return orders?.length.toString() ?? '0';
                      }, orElse: () {
                        return '0';
                      })} )',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontFamily: 'Almarai',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 16 / 14,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Expanded(
                child: BlocBuilder<OrdersBloc, OrdersState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (orders, hasMore) {
                        if (orders?.isEmpty == true) {
                          return RefreshIndicator(
                            onRefresh: () async {
                              context.read<OrdersBloc>().add(
                                OrdersEvent.getOrders(
                                  subCategoryId: widget.stat.id ?? 0,
                                  loadMore: false,
                                  isQuranPhotographed: selectedTab == 0,
                                ),
                              );
                            },
                            child: Center(
                              child: Text(
                                t.noOrders,
                                style: Theme.of(context).textTheme.titleLarge
                                    ?.copyWith(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSecondary,
                                    ),
                              ),
                            ),
                          );
                        }
                        return RefreshIndicator(
                          onRefresh: () async {
                            context.read<OrdersBloc>().add(
                              OrdersEvent.getOrders(
                                subCategoryId: widget.stat.id ?? 0,
                                loadMore: false,
                                isQuranPhotographed: selectedTab == 0,
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Gap(15.h),
                              Expanded(
                                child: ListView.builder(
                                  controller: _scrollController,
                                  itemCount: orders?.length,
                                  itemBuilder: (context, index) {
                                    final order = orders?[index];
                                    return buildDocOrderCard(
                                      t: t,
                                      context: context,
                                      orderEntity: order ?? const OrderEntity(),
                                      orderDocsCount: widget.stat.id ?? 1,
                                      package: widget.stat,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },

                      loading: () {
                        return RefreshIndicator(
                          onRefresh: () async {
                            context.read<OrdersBloc>().add(
                              OrdersEvent.getOrders(
                                subCategoryId: widget.stat.id ?? 0,
                                loadMore: false,
                                isQuranPhotographed: selectedTab == 0,
                              ),
                            );
                          },
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) =>
                                ShimmerClientRow(height: 100.h),
                          ),
                        );
                      },

                      failure: (e) {
                        return RefreshIndicator(
                          onRefresh: () async {
                            context.read<OrdersBloc>().add(
                              OrdersEvent.getOrders(
                                subCategoryId: widget.stat.id ?? 0,
                                loadMore: false,
                                isQuranPhotographed: selectedTab == 0,
                              ),
                            );
                          },
                          child: ListView(
                            children: [
                              Center(
                                child: Text(
                                  e.error ?? '',
                                  style: Theme.of(context).textTheme.titleLarge
                                      ?.copyWith(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.onSecondary,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      orElse: () {
                        return RefreshIndicator(
                          onRefresh: () async {
                            context.read<OrdersBloc>().add(
                              OrdersEvent.getOrders(
                                subCategoryId: widget.stat.id ?? 0,
                                loadMore: false,
                                isQuranPhotographed: selectedTab == 0,
                              ),
                            );
                          },
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) =>
                                ShimmerClientRow(height: 100.h),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
