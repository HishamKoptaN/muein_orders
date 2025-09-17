import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class CheckOnboardingStatus extends OnboardingEvent {
  const CheckOnboardingStatus();

  @override
  List<Object> get props => [];
}

class CompleteOnboarding extends OnboardingEvent {
  const CompleteOnboarding();

  @override
  List<Object> get props => [];
}
