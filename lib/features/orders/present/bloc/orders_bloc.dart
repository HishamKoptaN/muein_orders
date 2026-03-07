import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/meta_entity.dart';
import '../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../cached_docs/domain/repo/cached_docs_repo.dart';
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
    on<OrdersEvent>((event, emit) async {
      await event.when(
        getOrders: (subCategoryId, loadMore) async {
          try {
            if (!loadMore) {
              emit(const OrdersState.loading());
            }
            final result = await ordersUseCases.getOrders(
              subCategoryId: subCategoryId,
              loadMore: loadMore,
            );
            result.when(
              success: (res) {
                emit(
                  OrdersState.loaded(
                    ordersRes:
                        res ??
                        const OrdersResEntity.orders(
                          orders: [],
                          meta: MetaEntity(),
                        ),
                  ),
                );
              },
              failure: (error) =>
                  emit(OrdersState.failure(apiErrorModel: error)),
            );
          } catch (e, stackTrace) {
            emit(
              OrdersState.failure(
                apiErrorModel: ApiErrorModel(error: e.toString()),
              ),
            );
          }
        },
      );
    });
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
          final ordersResJson =
              json['ordersRes'] as Map<String, dynamic>? ?? {};
          final ordersRes = OrdersResEntity.fromJson(ordersResJson);
          return OrdersState.loaded(ordersRes: ordersRes);
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
      loaded: (ordersRes) => {'ordersRes': ordersRes.toJson()},
      failure: (apiErrorModel) => {
        'type': 'failure',
        'error': apiErrorModel.toJson(),
      },
    );
  }

  void emitFaliure({
    required Emitter<OrdersState> emit,
    required ApiErrorModel apiErrorModel,
  }) => emit(OrdersState.failure(apiErrorModel: apiErrorModel));

  void emitLoaded({
    required Emitter<OrdersState> emit,
    OrdersResEntity? ordersResEntity,
  }) => emit(
    OrdersState.loaded(
      ordersRes:
          ordersResEntity ??
          const OrdersResEntity.orders(orders: [], meta: MetaEntity()),
    ),
  );
}
