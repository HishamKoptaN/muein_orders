import '../../../../core/entities/meta_entity.dart';
import '../../../../core/error/api_error_model.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../../domain/usecases/orders_use_cases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'orders_event.dart';
import 'orders_state.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrdersUseCases ordersUseCases;
  List<OrdersResEntity>? _allOrders;
  List<OrdersResEntity>? _searchOrders;
  MetaEntity? _meta;
  MetaEntity? _searchMeta;
  bool? _isSearching;
  OrdersBloc(
    this.ordersUseCases,
  ) : super(
          const OrdersState.initial(),
        ) {
    on<OrdersEvent>(
      (event, emit) async {
        await event.when(
          getOrders: (getMore) async {
            try {
              if (!getMore) {
                emit(OrdersState.loading());
              }
              final res = await ordersUseCases.getOrders(
                page: (_meta?.currentPage ?? 0) + 1,
              );
              await res.when(
                success: (res) async {
                  if (getMore) {
                    _allOrders = [
                      ...?_allOrders,
                      ...?res,
                    ];
                  } else if (!getMore) {
                    _allOrders = res;
                  }
                  emitLoaded(emit: emit);
                },
                failure: (apiErrorModel) async {
                  emitFaliure(apiErrorModel: apiErrorModel, emit: emit);
                },
              );
            } catch (e) {
              emitFaliure(
                  apiErrorModel: ApiErrorModel(
                    error: e.toString(),
                  ),
                  emit: emit);
            }
          },
          searchOrders: (query, getMore) async {
            _isSearching = true;
            final res = await ordersUseCases.getOrders(
              query: query,
              page: getMore ? (_meta?.currentPage ?? 0) + 1 : 1,
            );
            await res.when(
              success: (res) async {
                if (!getMore) {
                  _searchOrders = res;
                } else if (getMore) {
                  _searchOrders = [
                    ...?_searchOrders,
                    ...res ?? [],
                  ];
                }
                emitLoaded(emit: emit);
              },
              failure: (apiErrorModel) async {
                emitFaliure(apiErrorModel: apiErrorModel, emit: emit);
              },
            );
          },
          disposeSearch: () {
            _isSearching = false;
            emit(
              OrdersState.loaded(
                orders: _allOrders ?? [],
                hasMore: _meta?.hasNextPage ?? false,
                isSearching: _isSearching,
              ),
            );
          },
          updateIsDistributionPhotographed: (orderId) async {
            final listToUpdate =
                (_isSearching ?? false) ? _searchOrders : _allOrders;
            final updatedList = listToUpdate?.map((group) {
              final updatedOrders = group.orders?.map((order) {
                if (order.id == orderId) {
                  return order.copyWith(isDistributionPhotographed: true);
                }
                return order;
              }).toList();
              return group.copyWith(orders: updatedOrders);
            }).toList();
            if (_isSearching ?? false) {
              _searchOrders = updatedList;
            } else {
              _allOrders = updatedList;
            }
            emitLoaded(emit: emit);
          },
        );
      },
    );
  }
  void emitFaliure(
      {required Emitter<OrdersState> emit,
      required ApiErrorModel apiErrorModel}) {
    return emit(
      OrdersState.failure(
        apiErrorModel: apiErrorModel,
      ),
    );
  }

  void emitLoaded({required Emitter<OrdersState> emit}) {
    return emit(
      OrdersState.loaded(
        orders: _isSearching ?? false ? _searchOrders : (_allOrders ?? []),
        hasMore: _isSearching ?? false
            ? (_searchMeta?.hasNextPage ?? false)
            : (_meta?.hasNextPage ?? false),
        isSearching: _isSearching,
      ),
    );
  }
}
