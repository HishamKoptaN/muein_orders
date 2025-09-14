abstract class OnboardingRepository {
  Future<bool> isOnboardingCompleted();
  Future<void> completeOnboarding();
  List<Map<String, dynamic>> getOnboardingPages();
}
