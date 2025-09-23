import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/api_error_model.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../../domain/usecases/orders_use_cases.dart';

part 'orders_bloc.freezed.dart';
part 'orders_event.dart';
part 'orders_state.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrdersUseCases ordersUseCases;
  OrdersBloc(this.ordersUseCases) : super(const OrdersState.initial()) {
    on<OrdersEvent>((event, emit) async {
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
    });
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
