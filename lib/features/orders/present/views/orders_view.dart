import '../../../../core/all_imports.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../docs/present/views/add_doc_view.dart';
import '../../../docs/present/views/docs_view.dart';
import '../bloc/orders_bloc.dart';
import 'widgets/build_order_card.dart';
import 'widgets/orders_tabs .dart';
import 'widgets/shimmer_client_row.dart';

class OrdersView extends StatefulWidget {
  int packageId;
  OrdersView({
    super.key,
    required this.packageId,
  });

  static const String routeName = 'orders';
  static const String path = '/$routeName/:packageId';
  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  int selectedTab = 1;
  void _onTabSelected(int tabIndex) {
    setState(() {
      selectedTab = tabIndex;
    });
    context.read<OrdersBloc>().add(
          OrdersEvent.getOrders(
            packageId: widget.packageId,
            loadMore: false,
            isQuranPhotographed: selectedTab == 0,
          ),
        );
  }

  @override
  void initState() {
    super.initState();
    // تحميل الصفحة الأولى
    context.read<OrdersBloc>().add(
          OrdersEvent.getOrders(
            packageId: widget.packageId,
            loadMore: false,
            isQuranPhotographed: selectedTab == 0,
          ),
        );
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100) {
      debugPrint('✅ تم الوصول إلى نهاية القائمة وهناك المزيد');
      context.read<OrdersBloc>().state.whenOrNull(
        loaded: (
          clients,
          hasMore,
        ) {
          if (hasMore == true) {
            context.read<OrdersBloc>().add(
                  OrdersEvent.getOrders(
                    packageId: widget.packageId,
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
      appBar: CustomAppBar(
        title: t.orders,
      ),
      body: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return Column(
            children: [
              const SizedBox(height: 16),
              OrdersTabs(
                onTap: _onTabSelected,
                t: t,
                selectedTab: selectedTab,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    width: 69,
                    height: 18,
                    child: Text(
                      '${t.order}( ${state.maybeWhen(
                        loaded: (orders, hasMore) => orders?.length ?? 0,
                        orElse: () => '',
                      )} ) ${t.order}',
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
                  builder: (context, state) => state.maybeWhen(
                    loaded: (
                      orders,
                      hasMore,
                    ) {
                      if (orders!.isEmpty) {
                        return Center(
                          child: Text(
                            t.noOrders,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                          ),
                        );
                      }
                      return Column(
                        children: [
                          Gap(
                            15.h,
                          ),
                          Expanded(
                            child: ListView.builder(
                              controller: _scrollController,
                              itemCount: orders.length,
                              itemBuilder: (context, index) {
                                final order = orders[index];
                                final orderStatus = order.status ?? 1;
                                final isCompleted = orderStatus == 2;
                                return buildOrderCard(
                                  order: order,
                                  onTap: () {
                                    final photographed =
                                        order.isDistributionPhotographed ??
                                            false;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => photographed
                                            ? DocsView(
                                                orderId: order.id ?? 0,
                                              )
                                            : AddDocView(
                                                orderId: order.id ?? 0,
                                              ),
                                      ),
                                    );
                                  },
                                  status:
                                      order.isDistributionPhotographed == true
                                          ? t.documented
                                          : t.inProgress,
                                  statusColor: isCompleted
                                      ? const Color(0xFF0062B7)
                                      : Colors.orange,
                                  t: t,
                                  context: context,
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                    orElse: () => const SizedBox(),
                    loading: () => ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => ShimmerClientRow(
                        height: 100.h,
                      ),
                    ),
                    failure: (e) => Center(
                      child: Text(
                        e.error ?? '',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
