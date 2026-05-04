import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../core/entities/meta_entity.dart';
import '../../../../../core/widgets/translated_text.dart';
import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../cached_docs/data/datasources/local/drift/file_upload_status_extension.dart';
import '../../../../home/domain/entities/order_type_res_entity.dart';
import '../../../domain/entities/orders_res_entity.dart';
import '../../bloc/orders_bloc.dart';
import 'build_doc_order_card.dart';
import 'orders_list_widget.dart';
import 'orders_scroll_controller.dart';
import 'shimmer/shimmer_client_row.dart';

class OrdersContentWidget extends StatelessWidget {
  const OrdersContentWidget({
    super.key,
    required this.state,
    required this.controller,
    required this.selectedStatus,
    required this.stat,
  });

  final OrdersState state;
  final OrdersScrollController controller;
  final FileUploadStatus? selectedStatus;
  final StatEntity stat;

  @override
  Widget build(BuildContext context) {
    return state.maybeWhen(
      loaded: (ordersRes, selectedUploadStatus) {
        return _buildLoadedState(context: context, ordersRes: ordersRes);
      },
      loading: _buildLoadingState,
      failure: (apiErrorModel) {
        return _buildErrorState(context, apiErrorModel);
      },
      orElse: _buildLoadingState,
    );
  }

  Widget _buildLoadingState() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ShimmerClientRow(height: 100.h);
      },
    );
  }

  Widget _buildErrorState(BuildContext context, apiErrorModel) {
    return TrText(
      apiErrorModel.message ?? '',
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        color: Theme.of(context).colorScheme.onSecondary,
      ),
    );
  }

  Widget _buildLoadedState({
    required BuildContext context,
    required OrdersResEntity ordersRes,
  }) {
    return ordersRes.when(
      orders: (orders, meta) {
        return _buildOrdersList(context: context, orders: orders, meta: meta);
      },
      individualDocs: (docs) {
        return _buildIndividualDocs(context: context, docs: docs);
      },
    );
  }

  Widget _buildOrdersList({
    required BuildContext context,
    required List<OrderEntity> orders,
    required MetaEntity meta,
  }) {
    return OrdersListWidget(
      ordersRes: OrdersResEntity.orders(orders: orders, meta: meta),
      stat: stat,
      scrollController: controller.scrollController,
      filterTitle: selectedStatus.filterTitle,
      emptyMessage: 'لا توجد طلبات توثيق',
      emptyIcon: selectedStatus.emptyIcon,
    );
  }

  Widget _buildIndividualDocs({
    required BuildContext context,
    required List<DocEntity> docs,
  }) {
    return CustomScrollView(
      controller: controller.scrollController,
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
                  '${stat.subCategory?.name ?? 0} ',
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
              orderDocsCount: stat.id ?? 1,
              stat: stat,
            );
          }, childCount: docs.length),
        ),
      ],
    );
  }
}
