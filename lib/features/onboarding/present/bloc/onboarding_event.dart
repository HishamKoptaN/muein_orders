part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.checkOnboardingStatus() = CheckOnboardingStatus;
  const factory OnboardingEvent.pageChanged(int index) = PageChanged;
  const factory OnboardingEvent.nextPage() = NextPage;
}
