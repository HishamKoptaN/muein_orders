import '../../../../core/all_imports.dart';
import '../../../../core/errors/api_error_model.dart';
import '../../data/models/orders_res_model.dart';
import '../../domain/entities/add_order_req.dart';
import '../../domain/usecases/orders_use_cases.dart';
import 'orders_event.dart';
import 'orders_state.dart';
import 'package:injectable/injectable.dart' show Injectable;

@Injectable()
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersUseCase ordersUseCase;
  List<Order>? _allOrders;
  Meta? _meta;
  AddOrderReq _addOrderReq = AddOrderReq();
  String? _uploadingProgress;
  OrdersBloc({
    required this.ordersUseCase,
  }) : super(
          const OrdersState.initial(),
        ) {
    on<OrdersEvent>(
      (event, emit) async {
        await event.when(
          getOrders: () async {
            try {
              final page = (_meta?.currentPage ?? 0) + 1;
              final lastPage = _meta?.lastPage;
              if (lastPage != null && page > lastPage) return;
              if (page == 1) {
                emit(const OrdersState.loading());
              }
              final res = await ordersUseCase.getOrders(page: page);
              await res.when(
                success: (
                  res,
                ) async {
                  _allOrders = [..._allOrders ?? [], ...res?.orders ?? []];
                  _meta = res?.meta ?? Meta();
                  emitCustomLoaded(
                    emit: emit,
                  );
                },
                failure: (
                  apiErrorModel,
                ) async {
                  emit(
                    OrdersState.getOrdersfailure(
                      apiErrorModel: apiErrorModel,
                    ),
                  );
                  emitCustomLoaded(
                    emit: emit,
                  );
                },
              );
            } catch (e) {
              emit(
                OrdersState.getOrdersfailure(
                  apiErrorModel: ApiErrorModel(
                    error: e.toString(),
                  ),
                ),
              );
              emitCustomLoaded(
                emit: emit,
              );
            }
          },
          updateData: (
            addOrderReq,
          ) async {
            try {
              _addOrderReq = addOrderReq;
              emitCustomLoaded(
                emit: emit,
              );
            } catch (e) {
              emit(
                OrdersState.failure(
                  apiErrorModel: ApiErrorModel(
                    error: e.toString(),
                  ),
                ),
              );
              emitCustomLoaded(
                emit: emit,
              );
            }
          },
          createOrder: () async {
            if (_addOrderReq.isComplete) {
              try {
                emitCustomLoaded(emit: emit);
                final result = await ordersUseCase.createOrder(
                  addOrderReq: _addOrderReq,
                  onSendProgress: (
                    sent,
                    total,
                  ) {
                    _uploadingProgress = "${((sent / total) * 100).toInt()}%";
                    emitCustomLoaded(
                      emit: emit,
                    );
                  },
                );
                await result.when(
                  success: (
                    order,
                  ) async {
                    _addOrderReq = AddOrderReq.empty();
                    _allOrders = [
                      order!,
                      ...?_allOrders,
                    ];
                    emit(
                      const OrdersState.success(),
                    );
                    emitCustomLoaded(
                      emit: emit,
                    );
                  },
                  failure: (
                    apiErrorModel,
                  ) async {
                    emit(
                      OrdersState.failure(
                        apiErrorModel: apiErrorModel,
                      ),
                    );
                    emitCustomLoaded(
                      emit: emit,
                    );
                  },
                );
              } catch (e, s) {
                debugPrint(
                  "❌ Exception in createOrder: $e\n$s",
                );
                emit(
                  OrdersState.failure(
                    apiErrorModel: ApiErrorModel(
                      error: e.toString(),
                    ),
                  ),
                );
                emitCustomLoaded(
                  emit: emit,
                );
              }
            } else {
              emit(
                OrdersState.failure(
                  apiErrorModel: ApiErrorModel(
                    error: "قم بملئ جميع الحقول",
                  ),
                ),
              );
              emitCustomLoaded(
                emit: emit,
              );
            }
          },
        );
      },
    );
  }

  void emitCustomLoaded({
    required Emitter<OrdersState> emit,
  }) {
    emit(
      OrdersState.loaded(
        orders: _allOrders ?? [],
        hasMore: _meta?.hasNextPage ?? false,
        addOrderReq: _addOrderReq,
        uploadingProgress: _uploadingProgress,
      ),
    );
  }
}
