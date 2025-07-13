import 'package:flutter/cupertino.dart';
import '../../../../core/all_imports.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/build_order_row.dart';
import '../../../../core/widgets/widget_column_header.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../docs/present/blocs/bloc/docs_bloc.dart';
import '../../../docs/present/views/add_doc_view.dart';
import '../../../docs/present/views/docs_view.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../bloc/orders_bloc.dart';
import '../bloc/orders_event.dart';
import '../bloc/orders_state.dart';
import 'widgets/shimmer_client_row.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({
    super.key,
  });
  static const String routeName = "OrdersView";
  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    context.read<OrdersBloc>().add(
          OrdersEvent.getOrders(getMore: false),
        );
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100) {
      debugPrint("✅ تم الوصول إلى نهاية القائمة وهناك المزيد");
      final bloc = context.read<OrdersBloc>();
      final state = bloc.state;
      state.maybeWhen(
        loaded: (clients, hasMore, isSearching) {
          if (hasMore == true) {
            bloc.add(OrdersEvent.getOrders(getMore: true));
          }
        },
        orElse: () {},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      body: Column(
        children: [
          // SearchTextWidget(controller: _controller, t: t),
          // Gap(10.h),
          Expanded(
            child: BlocBuilder<OrdersBloc, OrdersState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (
                    clients,
                    hasMore,
                    isSearching,
                  ) {
                    if (clients!.isEmpty) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            isSearching ?? false
                                ? t.there_are_no_results_for_this_search
                                : 'لا يوجد طلبات.',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                          ),
                        ),
                      );
                    }
                    return Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buildColumnHeader(
                                label: t.printed_name,
                                flex: 4,
                              ),
                              buildColumnHeader(
                                label: t.execution_number,
                                flex: 4,
                              ),
                              buildColumnHeader(
                                label: '',
                                //
                                flex: 2,
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: clients.isEmpty
                              ? Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      isSearching ?? false
                                          ? 'لا توجد نتائج لهذا البحث.'
                                          : 'لا يوجد طلبات.',
                                      // style: TextStyles.bold16,
                                    ),
                                  ),
                                )
                              : ListView.builder(
                                  controller: _scrollController,
                                  itemCount: clients.length,
                                  itemBuilder: (context, index) {
                                    final group = clients[index];
                                    final package = group.package;
                                    final orders = group.orders ?? [];
                                    final packageTitle =
                                        '${t.package} : ${package?.quantity}';
                                    return Card(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            packageTitle,
                                          ),
                                          const SizedBox(height: 8),
                                          ListView.separated(
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: orders.length,
                                            separatorBuilder: (_, __) =>
                                                const Divider(),
                                            itemBuilder: (context, i) {
                                              final order = orders[i];
                                              return GestureDetector(
                                                onTap: () async {
                                                  final photographed = order
                                                          .isDistributionPhotographed ??
                                                      false;
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (_) =>
                                                          photographed
                                                              ? DocsView(
                                                                  orderId: order
                                                                          .id ??
                                                                      0)
                                                              : AddDocView(
                                                                  orderId: order
                                                                          .id ??
                                                                      0),
                                                    ),
                                                  );
                                                },
                                                child: buildOrderRow(
                                                  order: order,
                                                  t: t,
                                                  context: context,
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                        )
                      ],
                    );
                  },
                  orElse: () {
                    return const SizedBox();
                  },
                  loading: () {
                    return ListView.builder(
                      padding: const EdgeInsets.only(top: 10),
                      itemCount: 10,
                      itemBuilder: (context, index) => ShimmerClientRow(
                        height: 100.h,
                      ),
                    );
                  },
                  failure: (e) {
                    return Center(
                      child: Text(
                        e.error ?? '',
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  Widget buildUploadStatus({required int orderId}) {
    final statusData =
        context.read<DocsBloc>().getUploadStatusForOrder(orderId);
    Widget buildStatusText() {
      if (statusData == null) return Text("لم يبدأ");
      switch (statusData.status) {
        case DocUploadStatus.uploading:
          return Text("جاري الرفع ${statusData.progress ?? ''}",
              style: TextStyle(color: Colors.orange));
        case DocUploadStatus.success:
          return Text("تم الرفع", style: TextStyle(color: Colors.green));
        case DocUploadStatus.failed:
          return Text("فشل الرفع", style: TextStyle(color: Colors.red));
        case DocUploadStatus.notStarted:
        default:
          return Text("لم يبدأ");
      }
    }

    if (statusData == null) {
      return Text('لم يبدأ', style: TextStyle(color: Colors.grey));
    }
    switch (statusData.status) {
      case DocUploadStatus.uploading:
        return Text('جاري الرفع ${statusData.progress ?? ""}',
            style: TextStyle(color: Colors.orange));
      case DocUploadStatus.success:
        return Text('تم الرفع', style: TextStyle(color: Colors.green));
      case DocUploadStatus.failed:
        return Text('فشل الرفع', style: TextStyle(color: Colors.red));
      default:
        return Text('لم يبدأ', style: TextStyle(color: Colors.grey));
    }
  }
}




  //  await showDialog(
                                                        //     context: context,
                                                        //     builder:
                                                        //         (BuildContext
                                                        //             context) {
                                                        //       return AlertDialog(
                                                        //         content: Column(
                                                        //           mainAxisSize:
                                                        //               MainAxisSize
                                                        //                   .min,
                                                        //           children: [
                                                        //             IconsOutlineButton(
                                                        //               onPressed:
                                                        //                   () async {
                                                        //                 Navigator.of(context)
                                                        //                     .pop();
                                                        //                 Navigator
                                                        //                     .push(
                                                        //                   context,
                                                        //                   MaterialPageRoute(
                                                        //                     builder: (_) =>
                                                        //                         AddDocView(orderId: order.id ?? 0),
                                                        //                   ),
                                                        //                 );
                                                        //               },
                                                        //               text: t
                                                        //                   .add_documentation,
                                                        //               iconData:
                                                        //                   CupertinoIcons
                                                        //                       .add_circled_solid,
                                                        //               color: AppColors
                                                        //                   .greenColor,
                                                        //               textStyle:
                                                        //                   const TextStyle(
                                                        //                       color: Colors.white),
                                                        //               iconColor:
                                                        //                   Colors
                                                        //                       .white,
                                                        //             ),
                                                        //             const SizedBox(
                                                        //                 height:
                                                        //                     10),
                                                        //             IconsOutlineButton(
                                                        //               onPressed:
                                                        //                   () async {
                                                        //                 Navigator.of(context)
                                                        //                     .pop();
                                                        //                 Navigator
                                                        //                     .push(
                                                        //                   context,
                                                        //                   MaterialPageRoute(
                                                        //                     builder: (_) =>
                                                        //                         DocsView(orderId: order.id ?? 0),
                                                        //                   ),
                                                        //                 );
                                                        //               },
                                                        //               text: t
                                                        //                   .show_documentations,
                                                        //               iconData:
                                                        //                   CupertinoIcons
                                                        //                       .photo_on_rectangle,
                                                        //               color: AppColors
                                                        //                   .greenColor,
                                                        //               textStyle:
                                                        //                   const TextStyle(
                                                        //                       color: Colors.white),
                                                        //               iconColor:
                                                        //                   Colors
                                                        //                       .white,
                                                        //             ),
                                                        //           ],
                                                        //         ),
                                                        //       );
                                                        //     },
                                                        //   );