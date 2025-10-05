import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/api_error_model.dart';
import '../../../docs/domain/repo/cached_docs_repo.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../../domain/usecases/orders_use_cases.dart';
part 'orders_bloc.freezed.dart';
part 'orders_event.dart';
part 'orders_state.dart';
@singleton
class OrdersBloc extends HydratedBloc<OrdersEvent, OrdersState> {
  final OrdersUseCases ordersUseCases;
  final CachedDocsRepo localRepo;
  OrdersBloc(this.ordersUseCases, this.localRepo)
      : super(const OrdersState.initial()) {
    on<OrdersEvent>(
      (event, emit) async {
        await event.when(
          getOrders: (
            packageId,
            loadMore,
            isQuranPhotographed,
          ) async {
            try {
              emit(const OrdersState.loading());
              final result = await ordersUseCases.getOrders(
                packageId: packageId,
                isDistributionPhotographed: isQuranPhotographed,
                loadMore: loadMore,
              );
              result.when(
                success: (response) {
                  emit(
                    OrdersState.loaded(
                      orders: response?.orders ?? [],
                      hasMore: response?.meta?.hasNextPage ?? false,
                    ),
                  );
                },
                failure: (error) =>
                    emit(OrdersState.failure(apiErrorModel: error)),
              );
            } catch (e, stackTrace) {
              emit(
                OrdersState.failure(
                  apiErrorModel: ApiErrorModel(
                    error: e.toString(),
                  ),
                ),
              );
            }
          },
          searchOrders: (query, getMore) async {
            // final res = await ordersUseCases.getOrders(
            //   packageId: 1,
            //   query: query,
            //   page: getMore ? (_meta?.currentPage ?? 0) + 1 : 1,
            // );
            // await res.when(
            //   success: (res) async {
            //     if (!getMore) {
            //       _searchOrders = res;
            //     } else if (getMore) {
            //       _searchOrders = [...?_searchOrders, ...res ?? []];
            //     }
            //     emitLoaded(emit: emit);
            //   },
            //   failure: (apiErrorModel) async {
            //     emitFaliure(apiErrorModel: apiErrorModel, emit: emit);
            //   },
            // );
          },
          disposeSearch: () {
            // emit(
            //   OrdersState.loaded(
            //     orders: _allOrders ?? [],
            //     hasMore: _meta?.hasNextPage ?? false,
            //     isSearching: _isSearching,
            //   ),
            // );
          },
          updateIsDistributionPhotographed: (orderId) async {
            // final listToUpdate = (_isSearching ?? false)
            //     ? _searchOrders
            //     : _allOrders;
            // final updatedList = listToUpdate?.map((group) {
            //   final updatedOrders = group.orders?.map((order) {
            //     if (order.id == orderId) {
            //       return order.copyWith(isDistributionPhotographed: true);
            //     }
            //     return order;
            //   }).toList();
            //   return group.copyWith(orders: updatedOrders);
            // }).toList();
            // if (_isSearching ?? false) {
            //   _searchOrders = updatedList;
            // } else {
            //   _allOrders = updatedList;
            // }
            // emitLoaded(emit: emit);
          },
        );
      },
    );
  }

  @override
  OrdersState? fromJson(Map<String, dynamic> json) {
    try {
      final stateType = json['type'] as String?;
      switch (stateType) {
        case 'initial':
          return const OrdersState.initial();
        case 'loading':
          return const OrdersState.loading();
        case 'loaded':
          final ordersJson = json['orders'] as List<dynamic>? ?? [];
          final hasMore = json['hasMore'] as bool? ?? false;
          final orders = ordersJson
              .where((e) => e != null)
              .map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
              .toList();
          return OrdersState.loaded(orders: orders, hasMore: hasMore);
        case 'failure':
          final errorJson = json['error'] as Map<String, dynamic>? ?? {};
          final apiError = ApiErrorModel.fromJson(errorJson);
          return OrdersState.failure(apiErrorModel: apiError);
        default:
          return const OrdersState.initial();
      }
    } catch (e) {
      return const OrdersState.initial();
    }
  }

  @override
  Map<String, dynamic>? toJson(OrdersState state) {
    return state.when(
      initial: () => {'type': 'initial'},
      loading: () => {'type': 'loading'},
      loaded: (orders, hasMore) => {
        'type': 'loaded',
        'orders': orders?.map((e) => e.toJson()).toList() ?? [],
        'hasMore': hasMore,
      },
      failure: (apiErrorModel) => {
        'type': 'failure',
        'error': apiErrorModel.toJson(),
      },
    );
  }

  void emitFaliure({
    required Emitter<OrdersState> emit,
    required ApiErrorModel apiErrorModel,
  }) =>
      emit(OrdersState.failure(apiErrorModel: apiErrorModel));

  void emitLoaded(
          {required Emitter<OrdersState> emit,
          OrdersResEntity? ordersResEntity}) =>
      emit(
        OrdersState.loaded(
          orders: ordersResEntity?.orders ?? [],
          hasMore: ordersResEntity?.meta?.hasNextPage ?? false,
        ),
      );
}
