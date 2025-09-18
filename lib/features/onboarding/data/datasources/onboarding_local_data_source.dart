import 'package:mubin_orders/features/onboarding/data/models/onboarding_model.dart';

abstract class OnboardingLocalDataSource {
  Future<bool> isOnboardingCompleted();
  Future<void> completeOnboarding();
  List<OnboardingModel> getOnboardingPages();
}

class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  @override
  Future<bool> isOnboardingCompleted() async {
    return false;
  }

  @override
  Future<void> completeOnboarding() async {
    // Implementation will be added after PrefsStorageService is available
  }

  @override
  List<OnboardingModel> getOnboardingPages() {
    return [
      OnboardingModel(
        title: 'مرحباً بك في تطبيق مبن',
        description: 'نحن سعداء بانضمامك إلينا في متجرنا الإلكتروني',
        imagePath: 'assets/images/onboarding_1.png',
      ),
      OnboardingModel(
        title: 'تعرف على واجهة التطبيق',
        description: 'هنا ستجد المهام والطلبات والتنبيهات والفلترات',
        imagePath: 'assets/images/onboarding_2.png',
      ),
      OnboardingModel(
        title: 'التوثيق بالصور والفيديوهات',
        description: 'تأكد من وضوح الصور وعدد نسخ المصحف قبل الإرسال',
        imagePath: 'assets/images/onboarding_3.png',
      ),
    ];
  }
}
