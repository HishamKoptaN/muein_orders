part of 'instructions_bloc.dart';

@freezed
class InstructionsEvent with _$InstructionsEvent {
  const factory InstructionsEvent.pageChanged({
    required int pageIndex,
  }) = PageChanged;
}
