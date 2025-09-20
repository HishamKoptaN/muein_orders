import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../gen/assets.gen.dart';
import '../../domain/entities/onboarding_page_entity.dart';

abstract class OnboardingLocalDataSource {
  Future<bool> isOnboardingCompleted();
  Future<void> completeOnboarding();
  List<OnboardingPageEntity> getOnboardingPages();
}

@LazySingleton(as: OnboardingLocalDataSource)
class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  final SharedPreferences _prefs;
  static const String _onboardingCompletedKey = 'onboarding_completed';

  OnboardingLocalDataSourceImpl({required SharedPreferences prefs})
      : _prefs = prefs;

  @override
  Future<bool> isOnboardingCompleted() async {
    return _prefs.getBool(_onboardingCompletedKey) ?? false;
  }

  @override
  Future<void> completeOnboarding() async {
    await _prefs.setBool(_onboardingCompletedKey, true);
  }

  @override
  List<OnboardingPageEntity> getOnboardingPages() {
    return [
      OnboardingPageEntity(
        titleKey: 'welcome',
        descriptionKey: 'we_are_happy_to_have_you_join_our_store',
        imagePath: Assets.images.onboarding.onboarding1.path,
      ),
      OnboardingPageEntity(
        titleKey: 'get_to_know_the_application_interface',
        descriptionKey: 'here_you_will_find_tasks_requests_alerts_and_filters',
        imagePath: Assets.images.onboarding.onboarding2.path,
      ),
      OnboardingPageEntity(
        titleKey: 'documentation_with_photos_and_videos',
        descriptionKey: 'make_sure_the_images_are_clear_and_correct',
        imagePath: Assets.images.onboarding.onboarding3.path,
      ),
    ];
  }
}
