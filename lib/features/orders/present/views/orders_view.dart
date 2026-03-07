import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../core/widgets/translated_text.dart';
import '../../../home/domain/entities/order_type_res_entity.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../bloc/orders_bloc.dart';
import 'widgets/build_doc_order_card.dart';
import 'widgets/shimmer/shimmer_client_row.dart';

class OrderDocsView extends StatefulWidget {
  StatEntity stat;
  OrderDocsView({super.key, required this.stat});
  static const String routeName = 'orders';
  @override
  State<OrderDocsView> createState() => _OrderDocsViewState();
}

class _OrderDocsViewState extends State<OrderDocsView> {
  final ScrollController _scrollController = ScrollController();
  int selectedTab = 1;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    getIt<OrdersBloc>().add(
      OrdersEvent.getOrders(
        subCategoryId: widget.stat.subCategory?.id ?? 1,
        loadMore: false,
      ),
    );
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100) {
      getIt<OrdersBloc>().state.whenOrNull(
        loaded: (ordersRes) {
          if (ordersRes.mapOrNull(orders: (value) => value.meta.hasNextPage) ==
              true) {
            getIt<OrdersBloc>().add(
              OrdersEvent.getOrders(
                subCategoryId: widget.stat.subCategory?.id ?? 0,
                loadMore: true,
              ),
            );
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'طلبات'),
      body: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (ordersRes) {
              return ordersRes.when(
                orders: (orders, meta) {
                  return CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          child: Row(
                            children: [
                              TrText(
                                '${'طلبات'} ( ${ordersRes.mapOrNull(orders: (value) => value.orders.length) ?? 0} )',
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                  fontFamily: 'Almarai',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 16 / 14,
                                  color: Color(0xFF757575),
                                ),
                              ),
                              Gap(70.w),
                              TrText(
                                '${widget.stat.subCategory?.name ?? 0} ',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                  height: 16 / 14,
                                  color: const Color(0xFF757575),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, i) {
                            final order = ordersRes.mapOrNull(
                              orders: (value) => value.orders[i],
                            );
                            return buildDocOrderCard(
                              context: context,
                              order:
                                  order ??
                                  const OrderEntity(
                                    id: 0,
                                    sallaOrderId: 0,
                                    printedName: '',
                                    executionNumber: '',
                                    docs: [],
                                  ),
                              orderDocsCount: widget.stat.id ?? 1,
                              stat: widget.stat,
                            );
                          },
                          childCount:
                              ordersRes
                                  .mapOrNull(orders: (value) => value.orders)
                                  ?.length ??
                              0,
                        ),
                      ),
                      if (ordersRes.mapOrNull(
                            orders: (value) => value.meta.hasNextPage,
                          ) ==
                          true)
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        ),
                    ],
                  );
                },
                individualDocs: (docs) {
                  return CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          child: Row(
                            children: [
                              TrText(
                                '${'توثيقات'} ( ${docs.length} )',
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                  fontFamily: 'Almarai',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 16 / 14,
                                  color: Color(0xFF757575),
                                ),
                              ),
                              Gap(70.w),
                              TrText(
                                '${widget.stat.subCategory?.name ?? 0} ',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                  height: 16 / 14,
                                  color: const Color(0xFF757575),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, i) {
                          final doc = docs[i];
                          final order = OrderEntity(
                            id: doc.id,
                            sallaOrderId: 0,
                            printedName: '',
                            executionNumber: '',
                            docs: [doc],
                          );
                          return buildDocOrderCard(
                            context: context,
                            order: order,
                            orderDocsCount: widget.stat.id ?? 1,
                            stat: widget.stat,
                          );
                        }, childCount: docs.length),
                      ),
                    ],
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
              return TrText(
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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
