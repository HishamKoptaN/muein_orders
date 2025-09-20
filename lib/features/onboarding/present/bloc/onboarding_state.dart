part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.loading() = _Loading;
  const factory OnboardingState.failure({@Default('') String errorMessage}) =
      _Failure;
  const factory OnboardingState.onboardingNotCompleted({
    required List<OnboardingPageEntity> pages,
    required int currentPageIndex,
    @Default(false) bool isLastPage,
  }) = _OnboardingNotCompleted;

  const factory OnboardingState.onboardingCompleted() = _OnboardingCompleted;
}
