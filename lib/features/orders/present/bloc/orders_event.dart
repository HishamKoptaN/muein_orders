part of 'orders_bloc.dart';

@freezed
abstract class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.getOrders({
    required int subCategoryId,
    required bool loadMore,
  }) = _GetOrders;
}
