import 'package:mubin_orders/features/onboarding/data/datasources/onboarding_local_data_source.dart';
import 'package:mubin_orders/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDataSource localDataSource;

  OnboardingRepositoryImpl({required this.localDataSource});

  @override
  Future<bool> isOnboardingCompleted() async {
    return await localDataSource.isOnboardingCompleted();
  }

  @override
  Future<void> completeOnboarding() async {
    await localDataSource.completeOnboarding();
  }

  @override
  List<Map<String, dynamic>> getOnboardingPages() {
    final pages = localDataSource.getOnboardingPages();
    return pages.map((page) => page.toJson()).toList();
  }
}
