part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded({
    required List<OrderTypeResEntity> orderTypeResEntity,
  }) = _Loaded;
  const factory HomeState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
