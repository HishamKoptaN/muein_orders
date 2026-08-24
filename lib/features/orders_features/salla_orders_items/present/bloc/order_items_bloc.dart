import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/entities/meta_entity.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../../data/models/order_items_res_model.dart';
import '../../domain/entities/salla_order_items_res_entity.dart';
import '../../domain/usecases/order_items_use_cases.dart';
part 'order_items_bloc.freezed.dart';
part 'order_items_event.dart';
part 'order_items_state.dart';

@lazySingleton
class OrderItemsBloc extends Bloc<OrderItemsEvent, OrderItemsState> {
  final OrderItemsUseCases _useCases;
  OrderItemsBloc(this._useCases) : super(const .initial()) {
    on<OrderItemsEvent>((event, emit) async {
      await event.when(
        get: (subCategoryId) async {
          emit(const .loading());
          await _useCases.get(subCategoryId: subCategoryId).then((result) {
            return result.when(
              success: (entity) {},
              failure: (apiErrorModel) {
                emitFaliure(emit: emit, apiErrorModel: apiErrorModel);
              },
            );
          });
          await emit.forEach(
            _useCases.watch(),
            onData: (ordersRes) {
              return OrderItemsState.loaded(
                orderItemsRes: ordersRes,
                selectedUploadStatus: .failed,
              );
            },
            onError: (error, stackTrace) {
              return OrderItemsState.failure(
                apiErrorModel: ErrorInfo(message: error.toString()),
              );
            },
          );
        },
        watch: () {},
        filterChanged: (status) {},
      );
    });
  }
  void emitFaliure({
    required Emitter<OrderItemsState> emit,
    required ErrorInfo apiErrorModel,
  }) {
    emit(OrderItemsState.failure(apiErrorModel: apiErrorModel));
  }

  void emitLoaded({
    required Emitter<OrderItemsState> emit,
    SallaOrderItemsResEntity? ordersResEntity,
    List<SallaOrderItemModel>? filteredOrders,
    UploadStatus? selectedUploadStatus,
  }) {
    emit(
      OrderItemsState.loaded(
        orderItemsRes:
            ordersResEntity ??
            const SallaOrderItemsResEntity(
              sallaOrderItems: [],
              meta: MetaEntity(),
            ),
      ),
    );
  }
}
