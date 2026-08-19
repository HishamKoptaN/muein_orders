import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'dart:async';

import '../../../../../core/entities/meta_entity.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../../domain/usecases/orders_use_cases.dart';

part 'orders_bloc.freezed.dart';
part 'orders_event.dart';
part 'orders_state.dart';

@lazySingleton
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrdersUseCases _useCases;
  StreamSubscription? _subscription;
  int? _currentSubCategoryId;
  FileUploadStatus? _currentFilter;
  OrdersBloc(this._useCases) : super(const OrdersState.initial()) {
    on<OrdersEvent>((event, emit) async {
      await event.when(
        started: (subCategoryId) async {
          return _onStarted(subCategoryId, emit);
        },
        loadMore: () async {
          return _onLoadMore(emit: emit);
        },
        filterChanged: (status) async {
          return _onFilterChanged(emit: emit, status: status);
        },
      );
    });
  }

  Future<void> _onStarted(int subCategoryId, Emitter<OrdersState> emit) async {
    _currentSubCategoryId = subCategoryId;
    _currentFilter = null;
    await _subscription?.cancel();
    emit(const OrdersState.loading());
    // await emit.onEach<OrdersResEntity>(
    //   _useCases.watch(subCategoryId: subCategoryId, filter: null),
    //   onData: (ordersRes) {
    //     emit(
    //       OrdersState.loaded(ordersRes: ordersRes, selectedUploadStatus: null),
    //     );
    //   },
    //   onError: (error, stackTrace) {
    //     emit(
    //       OrdersState.failure(
    //         apiErrorModel: ErrorInfo(message: error.toString()),
    //       ),
    //     );
    //   },
    // );
  }

  Future<void> _onLoadMore({required Emitter<OrdersState> emit}) async {
    // if (_currentSubCategoryId == null) return;
    // await _useCases.loadMore(
    //   subCategoryId: _currentSubCategoryId!,
    //   filter: _currentFilter,
    // );
  }

  Future<void> _onFilterChanged({
    required FileUploadStatus? status,
    required Emitter<OrdersState> emit,
  }) async {
    if (_currentSubCategoryId == null) return;
    _currentFilter = status;
    final currentOrdersRes = state.maybeWhen(
      loaded: (ordersRes, selectedUploadStatus) => ordersRes,
      orElse: () => null,
    );
    if (currentOrdersRes != null) {
      emit(
        OrdersState.loaded(
          ordersRes: currentOrdersRes,
          selectedUploadStatus: status,
        ),
      );
    }
    await _subscription?.cancel();
    // await emit.onEach<OrdersResEntity>(
    //   _useCases.watch(subCategoryId: _currentSubCategoryId!, filter: status),
    //   onData: (ordersRes) {
    //     emit(
    //       OrdersState.loaded(
    //         ordersRes: ordersRes,
    //         selectedUploadStatus: status,
    //       ),
    //     );
    //   },
    //   onError: (error, stackTrace) {
    //     emit(
    //       OrdersState.failure(
    //         apiErrorModel: ErrorInfo(message: error.toString()),
    //       ),
    //     );
    //   },
    // );
  }

  // @override
  // OrdersState? fromJson(Map<String, dynamic> json) {
  //   try {
  //     final stateType = json['type'] as String?;
  //     switch (stateType) {
  //       case 'initial':
  //         return const OrdersState.initial();
  //       case 'loading':
  //         return const OrdersState.loading();
  //       case 'loaded':
  //         final ordersResJson =
  //             json['ordersRes'] as Map<String, dynamic>? ?? {};
  //         final ordersRes = OrdersResEntity.fromJson(ordersResJson);
  //         final statusValue = json['selectedUploadStatus'] as String?;
  //         final selectedUploadStatus = statusValue != null
  //             ? FileUploadStatus.values.firstWhere(
  //                 (e) => e.name == statusValue,
  //                 orElse: () => FileUploadStatus.init,
  //               )
  //             : null;
  //         return OrdersState.loaded(
  //           ordersRes: ordersRes,
  //           selectedUploadStatus: selectedUploadStatus,
  //         );
  //       case 'failure':
  //         final errorJson = json['error'] as Map<String, dynamic>? ?? {};
  //         final apiError = ErrorInfo(message: errorJson['message']);
  //         return OrdersState.failure(apiErrorModel: apiError);
  //       default:
  //         return const OrdersState.initial();
  //     }
  //   } catch (e) {
  //     return const OrdersState.initial();
  //   }
  // }

  // @override
  // Map<String, dynamic>? toJson(OrdersState state) {
  //   return state.when(
  //     initial: () {
  //       return {'type': 'initial'};
  //     },
  //     loading: () {
  //       return {'type': 'loading'};
  //     },
  //     loaded: (ordersRes, selectedUploadStatus) {
  //       return {
  //         'type': 'loaded',
  //         'ordersRes': ordersRes.toJson(),
  //         'selectedUploadStatus': selectedUploadStatus?.name,
  //       };
  //     },
  //     failure: (apiErrorModel) {
  //       return {
  //         'type': 'failure',
  //         'error': {'message': apiErrorModel.message},
  //       };
  //     },
  //   );
  // }

  void emitFaliure({
    required Emitter<OrdersState> emit,
    required ErrorInfo apiErrorModel,
  }) {
    emit(OrdersState.failure(apiErrorModel: apiErrorModel));
  }

  void emitLoaded({
    required Emitter<OrdersState> emit,
    OrdersResEntity? ordersResEntity,
    List<OrderEntity>? filteredOrders,
    FileUploadStatus? selectedUploadStatus,
  }) {
    emit(
      OrdersState.loaded(
        ordersRes:
            ordersResEntity ??
            const OrdersResEntity(orders: [], meta: MetaEntity()),
        selectedUploadStatus: selectedUploadStatus,
      ),
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
