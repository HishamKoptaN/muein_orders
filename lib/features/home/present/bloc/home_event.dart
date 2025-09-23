part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getSummary({@Default(false) bool getMore}) =
      _GetSummary;
}
