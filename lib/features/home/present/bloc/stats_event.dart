part of 'stats_bloc.dart';

@freezed
abstract class StatsEvent with _$StatsEvent {
  const factory StatsEvent.getStats() = _GetStats;
}
