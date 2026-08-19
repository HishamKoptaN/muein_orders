import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/entities/meta_entity.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../data/models/order_items_res_model.dart';
import '../../domain/entities/order_items_res_entity.dart';
import '../../domain/usecases/order_items_use_cases.dart';
part 'order_items_bloc.freezed.dart';
part 'order_items_event.dart';
part 'order_items_state.dart';

@lazySingleton
class OrderItemsBloc extends Bloc<OrderItemsEvent, OrderItemsState> {
  final OrderItemsUseCases _useCases;
  OrderItemsBloc(this._useCases) : super(const OrderItemsState.initial()) {
    on<OrderItemsEvent>((event, emit) async {
      await event.when(
        get: (subCategoryId) async {
          emit(const OrderItemsState.loading());
          await _useCases.get(subCategoryId: subCategoryId).then((result) {
            return result.when(
              success: (entity) {
                emitLoaded(emit: emit, ordersResEntity: entity);
              },
              failure: (apiErrorModel) {
                emitFaliure(emit: emit, apiErrorModel: apiErrorModel);
              },
            );
          });
        },
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
    OrderItemsResEntity? ordersResEntity,
    List<SallaOrderItemModel>? filteredOrders,
    FileUploadStatus? selectedUploadStatus,
  }) {
    emit(
      OrderItemsState.loaded(
        orderItemsRes:
            ordersResEntity ??
            const OrderItemsResEntity(items: [], meta: MetaEntity()),
      ),
    );
  }
}
