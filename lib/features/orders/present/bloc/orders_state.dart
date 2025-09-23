part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loading() = _Loading;
  const factory OrdersState.success() = _Success;
  const factory OrdersState.loaded({
    required List<OrderEntity>? orders,
    required bool? hasMore,
  }) = _Loaded;
  const factory OrdersState.clientShare() = _ClientShare;
  const factory OrdersState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
