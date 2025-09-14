import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/api_error_model.dart';
import '../../domain/entities/orders_res_entity.dart';
part 'orders_state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loading() = _Loading;
  const factory OrdersState.success() = _Success;
  const factory OrdersState.loaded({
    required List<OrdersResEntity>? orders,
    required bool? hasMore,
    required bool? isSearching,
  }) = _Loaded;
  const factory OrdersState.clientShare() = _ClientShare;
  const factory OrdersState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
