part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.pageChanged({required int pageIndex}) =
      PageChanged;
}
