import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_page_entity.freezed.dart';

@freezed
class OnboardingPageEntity with _$OnboardingPageEntity {
  const factory OnboardingPageEntity({
    required String titleKey,
    required String descriptionKey,
    required String imagePath,
  }) = _OnboardingPageEntity;
}
