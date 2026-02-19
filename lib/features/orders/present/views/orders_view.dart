import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../home/domain/entities/order_type_res_entity.dart';
import '../bloc/orders_bloc.dart';
import 'order_docs_widget.dart';
import 'widgets/orders_tabs .dart';

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
        subCategoryId: widget.stat.subCategory?.id ?? 1,
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
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      appBar: CustomAppBar(title: t.orders),
      body: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return Column(
            spacing: 15.h,
            children: [
              OrdersTabs(onTap: _onTabSelected, t: t, selectedTab: selectedTab),
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
              OrderDocsWidget(
                widget: widget,
                selectedTab: selectedTab,
                t: t,
                scrollController: _scrollController,
              ),
            ],
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
