part of 'orders_bloc.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loading() = _Loading;
  const factory OrdersState.loaded({
    required OrdersResEntity ordersRes,
    FileUploadStatus? selectedUploadStatus,
  }) = _Loaded;
  const factory OrdersState.failure({required ErrorInfo apiErrorModel}) =
      _Failure;
}
