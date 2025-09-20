import 'package:equatable/equatable.dart';

class OnboardingPageEntity extends Equatable {
  final String titleKey;
  final String descriptionKey;
  final String imagePath;

  const OnboardingPageEntity({
    required this.titleKey,
    required this.descriptionKey,
    required this.imagePath,
  });

  @override
  List<Object?> get props => [
        titleKey,
        descriptionKey,
        imagePath,
      ];
}
