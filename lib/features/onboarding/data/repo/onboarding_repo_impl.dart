import 'package:injectable/injectable.dart';

import '../../domain/entities/onboarding_page_entity.dart';
import '../../domain/repo/onboarding_rep.dart';
import '../datasources/onboarding_local_data_source.dart';

@LazySingleton(as: OnboardingRepo)
class OnboardingRepoImpl implements OnboardingRepo {
  final OnboardingLocalDataSource localDataSource;

  OnboardingRepoImpl({required this.localDataSource});

  @override
  Future<bool> isOnboardingCompleted() async {
    return await localDataSource.isOnboardingCompleted();
  }

  @override
  Future<void> completeOnboarding() async {
    await localDataSource.completeOnboarding();
  }

  @override
  List<OnboardingPageEntity> getOnboardingPages() {
    return localDataSource.getOnboardingPages();
  }
}
