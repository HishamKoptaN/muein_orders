import 'package:freezed_annotation/freezed_annotation.dart';
part 'orders_event.freezed.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.getOrders({@Default(false) bool getMore}) =
      _GetOrders;
  const factory OrdersEvent.updateIsDistributionPhotographed({
    required int orderId,
  }) = _UpdateIsDistributionPhotographed;
  const factory OrdersEvent.searchOrders(
      {required String query, @Default(false) bool getMore}) = _SearchOrders;
  const factory OrdersEvent.disposeSearch() = _DisposeSearch;
}
