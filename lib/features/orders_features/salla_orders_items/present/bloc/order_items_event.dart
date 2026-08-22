part of 'order_items_bloc.dart';

@freezed
abstract class OrderItemsEvent with _$OrderItemsEvent {
  const factory OrderItemsEvent.watch() = _Watch;
  const factory OrderItemsEvent.get({required int subCategoryId}) = _Get;
  const factory OrderItemsEvent.filterChanged({required UploadStatus? status}) =
      _FilterChanged;
}
