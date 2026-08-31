import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
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
          await _useCases.get(subCategoryId: subCategoryId);
          await _listenToOrdersStream(emit);
        },
        filterChanged: (status) async {
          await state.mapOrNull(
            loaded: (st) async {
              emit(st.copyWith(selectedUploadStatus: status));
              await _listenToOrdersStream(emit);
            },
          );
        },
      );
    });
  }
  Future<void> _listenToOrdersStream(Emitter<OrderItemsState> emit) async {
    final currentStatus = state.maybeMap(
      orElse: () {
        return null;
      },
      loaded: (s) {
        return s.selectedUploadStatus;
      },
    );

    await emit.forEach(
      _useCases.watch(uploadStatus: currentStatus),
      onData: (ordersRes) {
        return state.maybeMap(
          loaded: (st) {
            return st.copyWith(orderItemsRes: ordersRes);
          },
          orElse: () {
            return .loaded(
              orderItemsRes: ordersRes,
              selectedUploadStatus: currentStatus,
            );
          },
        );
      },
      onError: (error, stackTrace) {
        return OrderItemsState.failure(
          apiErrorModel: ErrorInfo(message: error.toString()),
        );
      },
    );
  }
}
