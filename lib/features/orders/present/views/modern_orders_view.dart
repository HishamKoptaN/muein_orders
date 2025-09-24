// import 'package:flutter_svg/flutter_svg.dart';

// import '../../../../core/all_imports.dart';
// import '../../../../core/gloabal_widgets/custom_scaffold.dart';
// import '../../../../core/theme/app_colors.dart';
// import '../../../../core/theme/app_text_styles.dart';
// import '../../../../core/widgets/modern_order_card.dart';
// import '../../../../core/widgets/modern_package_header.dart';
// import '../../../../gen/assets.gen.dart';
// import '../../../../l10n/app_localizations.dart';
// import '../../../docs/present/views/add_doc_view.dart';
// import '../../../docs/present/views/docs_view.dart';
// import '../../../drawer/modern_drawer.dart';
// import '../../domain/entities/orders_res_entity.dart';
// import '../bloc/orders_bloc.dart';
// import 'widgets/shimmer_client_row.dart';

// class ModernOrdersView extends StatefulWidget {
//   const ModernOrdersView({super.key});
//   static const String routeName = 'modern-orders';

//   @override
//   State<ModernOrdersView> createState() => _ModernOrdersViewState();
// }

// class _ModernOrdersViewState extends State<ModernOrdersView> {
//   final ScrollController _scrollController = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     context.read<OrdersBloc>().add(
//           const OrdersEvent.getOrders(packageId: 1, loadMore: false),
//         );
//     _scrollController.addListener(_onScroll);
//   }

//   void _onScroll() {
//     if (_scrollController.position.pixels >=
//         _scrollController.position.maxScrollExtent - 100) {
//       final bloc = context.read<OrdersBloc>();
//       final state = bloc.state;
//       state.maybeWhen(
//         loaded: (
//           clients,
//           hasMore,
//         ) {
//           if (hasMore == true) {
//             bloc.add(
//                 const OrdersEvent.getOrders(packageId: 1, loadMore: false),);
//           }
//         },
//         orElse: () {},
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final t = AppLocalizations.of(context);
//     return CustomScaffold(
//       appBar: _buildModernAppBar(t),
//       drawer: const ModernDrawer(),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               AppColors.background,
//               AppColors.backgroundVariant,
//             ],
//           ),
//         ),
//         child: BlocBuilder<OrdersBloc, OrdersState>(
//           builder: (context, state) => state.maybeWhen(
//             loaded: (clients, hasMore) {
//               if (clients?.isEmpty ?? true) {
//                 return _buildEmptyState(false);
//               }
//               return _buildOrdersList(clients!, t);
//             },
//             loading: _buildLoadingState,
//             failure: (e) => _buildErrorState(e.error ?? ''),
//             orElse: () => const SizedBox(),
//           ),
//         ),
//       ),
//     );
//   }

//   PreferredSizeWidget _buildModernAppBar(AppLocalizations t) => AppBar(
//         title: Text(
//           t.orders,
//           style: AppTextStyles.appBarTitle.copyWith(
//             color: Theme.of(context).colorScheme.onPrimary,
//           ),
//         ),
//         backgroundColor: Theme.of(context).colorScheme.primary,
//         foregroundColor: Theme.of(context).colorScheme.onPrimary,
//         elevation: 0,
//         leading: Navigator.of(context).canPop()
//             ? IconButton(
//                 onPressed: () => Navigator.of(context).pop(),
//                 icon: const Icon(Icons.arrow_back),
//               )
//             : Builder(
//                 builder: (context) {
//                   return IconButton(
//                     onPressed: () => Scaffold.of(context).openDrawer(),
//                     icon: SvgPicture.asset(
//                       Assets.icons.menu,
//                       width: 24.w,
//                       height: 24.h,
//                       colorFilter: ColorFilter.mode(
//                         Theme.of(context).colorScheme.onPrimary,
//                         BlendMode.srcIn,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//         actions: [

//           const SizedBox(width: 8),
//         ],
//       );

//   Widget _buildOrdersList(
//     List<OrderEntity> orders,
//     AppLocalizations t,
//   ) =>
//       RefreshIndicator(
//         onRefresh: () async {
//           context.read<OrdersBloc>().add(
//                 const OrdersEvent.getOrders(packageId: 1, loadMore: false),
//               );
//         },
//         color: AppColors.primary,
//         child: ListView.builder(
//           controller: _scrollController,
//           padding: EdgeInsets.symmetric(vertical: 16.h),
//           itemCount: orders.length,
//           itemBuilder: (context, index) {
//             final order = orders[index];
//             // final package = group.package;

//             return Column(
//               children: [
//                 // Package Header
//                 ModernPackageHeader(
//                   packageTitle: 'packageTitle',
//                   orderCount: orders.length,
//                 ),

//                 Gap(8.h),

//                 // Orders List
//                 ...orders.map(
//                   (order) => ModernOrderCard(
//                     order: order,
//                     onTap: () => _navigateToOrderDetails(order),
//                   ),
//                 ),

//                 Gap(16.h),
//               ],
//             );
//           },
//         ),
//       );

//   Widget _buildEmptyState(bool isSearching) {
//     final t = AppLocalizations.of(context);

//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 120.w,
//             height: 120.h,
//             decoration: BoxDecoration(
//               color: AppColors.surfaceVariant,
//               borderRadius: BorderRadius.circular(60.r),
//             ),
//             child: Icon(
//               Icons.inventory_2_outlined,
//               size: 60.sp,
//               color: AppColors.onSurfaceVariant,
//             ),
//           ),
//           Gap(24.h),
//           Text(
//             isSearching
//                 ? t.there_are_no_results_for_this_search
//                 : 'No orders yet',
//             style: AppTextStyles.titleMedium.copyWith(
//               color: AppColors.onSurfaceVariant,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           Gap(8.h),
//           Text(
//             isSearching
//                 ? 'جرب البحث بكلمات مختلفة'
//                 : 'ستظهر الطلبات هنا عند إضافتها',
//             style: AppTextStyles.bodyMedium.copyWith(
//               color: AppColors.onSurfaceVariant.withOpacity(0.7),
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildLoadingState() => ListView.builder(
//         padding: EdgeInsets.symmetric(vertical: 16.h),
//         itemCount: 6,
//         itemBuilder: (context, index) => Container(
//           margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
//           child: ShimmerClientRow(height: 120.h),
//         ),
//       );

//   Widget _buildErrorState(String error) {
//     final t = AppLocalizations.of(context);

//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 120.w,
//             height: 120.h,
//             decoration: BoxDecoration(
//               color: AppColors.errorContainer,
//               borderRadius: BorderRadius.circular(60.r),
//             ),
//             child: Icon(
//               Icons.error_outline,
//               size: 60.sp,
//               color: AppColors.error,
//             ),
//           ),
//           Gap(24.h),
//           Text(
//             'حدث خطأ',
//             style: AppTextStyles.titleMedium.copyWith(
//               color: AppColors.error,
//             ),
//           ),
//           Gap(8.h),
//           Text(
//             error,
//             style: AppTextStyles.bodyMedium.copyWith(
//               color: AppColors.onErrorContainer,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           Gap(24.h),
//           ElevatedButton.icon(
//             onPressed: () {
//               context.read<OrdersBloc>().add(
//                     const OrdersEvent.getOrders(packageId: 1, loadMore: false),
//                   );
//             },
//             icon: const Icon(Icons.refresh),
//             label: const Text('إعادة المحاولة'),
//           ),
//         ],
//       ),
//     );
//   }

//   void _navigateToOrderDetails(OrderEntity order) {
//     final photographed = order.isDistributionPhotographed ?? false;
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (_) => photographed
//             ? DocsView(orderId: order.id ?? 0)
//             : AddDocView(orderId: order.id ?? 0),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _scrollController.removeListener(_onScroll);
//     _scrollController.dispose();
//     super.dispose();
//   }
// }
