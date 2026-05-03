part of 'orders_bloc.dart';

@freezed
abstract class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.started({required int subCategoryId}) = _Started;
  const factory OrdersEvent.loadMore() = _LoadMore;
  const factory OrdersEvent.filterChanged({required FileUploadStatus? status}) =
      _FilterChanged;
}
