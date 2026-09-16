part of 'order_items_bloc.dart';

@freezed
abstract class OrderItemsEvent with _$OrderItemsEvent {
  const factory OrderItemsEvent.get({int? page, required int executionTypeId}) =
      _Get;
  const factory OrderItemsEvent.filterChanged({required UploadStatus? status}) =
      _FilterChanged;
}
