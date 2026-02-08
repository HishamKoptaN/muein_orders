part of 'instructions_bloc.dart';

@freezed
abstract class InstructionsState with _$InstructionsState {
  const factory InstructionsState.loaded({
    required List<InstructionPageEntity> pages,
    required int currentPageIndex,
    @Default(false) bool isLastPage,
  }) = _Loaded;
  const factory InstructionsState.loading() = _Loading;
  const factory InstructionsState.failure({@Default('') String errorMessage}) =
      _Failure;
}
