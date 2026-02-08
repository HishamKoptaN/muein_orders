part of 'instructions_bloc.dart';

@freezed
abstract class InstructionsEvent with _$InstructionsEvent {
  const factory InstructionsEvent.pageChanged({required int pageIndex}) =
      PageChanged;
}
