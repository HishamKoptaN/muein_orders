part of 'order_items_bloc.dart';

@freezed
abstract class OrderItemsState with _$OrderItemsState {
  const factory OrderItemsState.initial() = _Initial;
  const factory OrderItemsState.loading() = _Loading;
  const factory OrderItemsState.loaded({
    required SallaOrderItemsResEntity orderItemsRes,
    UploadStatus? selectedUploadStatus,
  }) = _Loaded;
  const factory OrderItemsState.failure({required ErrorInfo apiErrorModel}) =
      _Failure;
}
