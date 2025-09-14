import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/all_imports.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/build_order_row.dart';
import '../../../../core/widgets/widget_column_header.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../docs/present/blocs/bloc/docs_bloc.dart';
import '../../../docs/present/blocs/bloc/docs_state.dart';
import '../../../docs/present/views/add_doc_view.dart';
import '../../../docs/present/views/docs_view.dart';
import '../../../drawer/my_drawer.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../bloc/orders_bloc.dart';
import '../bloc/orders_event.dart';
import '../bloc/orders_state.dart';
import 'widgets/shimmer_client_row.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({
    super.key,
  });
  static const String routeName = "orders";
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
    return CustomScaffold(
      appBar: AppBar(
        title: Text(
          t.orders,
        ),
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 9,
                ),
                child: SvgPicture.asset(
                  Assets.icons.menu,
                  fit: BoxFit.contain,
                  width: 45,
                  height: 45,
                ),
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: SvgPicture.asset(
              Assets.icons.baseCart,
              fit: BoxFit.contain,
              width: 45,
              height: 45,
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
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
                          height: 56,
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildColumnHeader(
                                label: '',
                                flex: 4,
                              ),
                              buildColumnHeader(
                                label: t.execution_number,
                                flex: 4,
                              ),
                              buildColumnHeader(
                                label: '',
                                flex: 2,
                              ),
                            ],
                          ),
                        ),
                        Gap(
                          15.h,
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                          ),
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
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          packageTitle,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14,
                                            height: 1.0,
                                            letterSpacing: 0.0,
                                            color: Color.fromRGBO(
                                              14,
                                              166,
                                              145,
                                              1,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: orders.length,
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
                                                    builder: (_) => photographed
                                                        ? DocsView(
                                                            orderId:
                                                                order.id ?? 0)
                                                        : AddDocView(
                                                            orderId:
                                                                order.id ?? 0),
                                                  ),
                                                );
                                              },
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  buildOrderRow(
                                                    order: order,
                                                    t: t,
                                                    context: context,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .only(
                                                            start: 16,
                                                            end: 16,
                                                            top: 4),
                                                    child: BlocBuilder<DocsBloc,
                                                        DocsState>(
                                                      builder: (context, _) {
                                                        return Align(
                                                          alignment:
                                                              AlignmentDirectional
                                                                  .centerStart,
                                                          child:
                                                              buildUploadStatus(
                                                                  orderId: order
                                                                          .id ??
                                                                      0),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                        Gap(
                                          25.h,
                                        ),
                                      ],
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
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
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
          return Text(
            "جاري الرفع ${statusData.progress ?? ''}",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
            // style: TextStyle(color: Colors.orange)
          );
        case DocUploadStatus.success:
          return Text(
            "تم الرفع",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
            //  style: TextStyle(color: Colors.green)
          );
        case DocUploadStatus.failed:
          return Text(
            "فشل الرفع",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
            //  style: TextStyle(color: Colors.red)
          );
        case DocUploadStatus.notStarted:
        default:
          return Text(
            "لم يبدأ",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          );
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
