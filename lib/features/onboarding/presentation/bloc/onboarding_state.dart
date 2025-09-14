import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {
  @override
  List<Object> get props => [];
}

class OnboardingLoading extends OnboardingState {
  @override
  List<Object> get props => [];
}

class OnboardingNotCompleted extends OnboardingState {
  final List<Map<String, String>> pages;
  final int currentPageIndex;

  const OnboardingNotCompleted({
    required this.pages,
    this.currentPageIndex = 0,
  });

  @override
  List<Object> get props => [pages, currentPageIndex];

  OnboardingNotCompleted copyWith({
    List<Map<String, String>>? pages,
    int? currentPageIndex,
  }) {
    return OnboardingNotCompleted(
      pages: pages ?? this.pages,
      currentPageIndex: currentPageIndex ?? this.currentPageIndex,
    );
  }
}

class OnboardingCompleted extends OnboardingState {
  @override
  List<Object> get props => [];
}

class OnboardingError extends OnboardingState {
  final String message;

  const OnboardingError(this.message);

  @override
  List<Object> get props => [message];
}
