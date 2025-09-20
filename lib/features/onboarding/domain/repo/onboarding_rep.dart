import '../entities/onboarding_page_entity.dart';

abstract class OnboardingRepo {
  Future<bool> isOnboardingCompleted();
  Future<void> completeOnboarding();
  List<OnboardingPageEntity> getOnboardingPages();
}
