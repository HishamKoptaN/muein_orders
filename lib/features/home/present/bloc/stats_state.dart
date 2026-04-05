part of 'stats_bloc.dart';

@freezed
abstract class StatsState with _$StatsState {
  const factory StatsState.loading() = _Loading;
  const factory StatsState.loaded({required List<StatEntity> stats}) = _Loaded;
  const factory StatsState.failure({required ApiErrorModel apiErrorModel}) =
      _Failure;
}
