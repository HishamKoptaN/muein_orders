part of 'orders_bloc.dart';

@freezed
abstract class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.getOrders({
    required int packageId,
    required bool loadMore,
    bool? isQuranPhotographed,
  }) = _GetOrders;
  const factory OrdersEvent.updateIsDistributionPhotographed({
    required int orderId,
  }) = _UpdateIsDistributionPhotographed;
  const factory OrdersEvent.searchOrders({
    required String query,
    @Default(false) bool getMore,
  }) = _SearchOrders;
  const factory OrdersEvent.disposeSearch() = _DisposeSearch;
}
