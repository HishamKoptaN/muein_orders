import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../core/widgets/translated_text.dart';
import '../../../../l10n/app_localizations.dart';
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

  void _onTabSelected(int index) {
    setState(() => selectedTab = index);
    getIt<OrdersBloc>().add(
      OrdersEvent.getOrders(
        subCategoryId: widget.stat.id ?? 1,
        loadMore: false,
      ),
    );
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
        loaded: (clients, hasMore) {
          if (hasMore == true) {
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
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'طلبات'),
      body: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (orders, hasMore) {
              return Column(
                spacing: 15.h,
                children: [
                  // OrdersTabs(
                  //   onTap: _onTabSelected,
                  //   t: t,
                  //   selectedTab: selectedTab,
                  // ),
                  Row(
                    children: [
                      TrText(
                        '${'طلبات'} ( ${state.maybeWhen(loaded: (orders, hasMore) {
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
                  const SizedBox(height: 6),
                  Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      shrinkWrap: true,
                      itemCount: orders?.length,
                      itemBuilder: (context, index) {
                        final order = orders?[index];
                        return buildDocOrderCard(
                          context: context,
                          order: order ?? OrderEntity(),
                          orderDocsCount: widget.stat.id ?? 1,
                          stat: widget.stat,
                        );
                      },
                    ),
                  ),
                ],
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
