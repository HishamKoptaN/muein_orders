import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/onboarding_page_entity.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

@singleton
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final int totalPages = 3;

  OnboardingBloc() : super(const OnboardingState.loading()) {
    on<OnboardingEvent>((event, emit) async {
      await event.whenOrNull(
        checkOnboardingStatus: () => _onStartOnboarding(emit),
        pageChanged: (index) => _onPageChanged(index, emit),
        nextPage: () => _onNextPage(emit),
        skipOnboarding: () => _onSkipOnboarding(emit),
      );
    });
  }

  Future<void> _onStartOnboarding(Emitter<OnboardingState> emit) async {
    final pages = _getOnboardingPages();
    emit(
      OnboardingState.onboardingNotCompleted(
        pages: pages,
        currentPageIndex: 0,
        isLastPage: pages.length == 1,
      ),
    );
  }

  void _onPageChanged(int index, Emitter<OnboardingState> emit) {
    state.maybeWhen(
      onboardingNotCompleted: (pages, _, __) {
        emit(
          OnboardingState.onboardingNotCompleted(
            pages: pages,
            currentPageIndex: index,
            isLastPage: index == pages.length - 1,
          ),
        );
      },
      orElse: () {},
    );
  }

  void _onNextPage(Emitter<OnboardingState> emit) {
    state.maybeWhen(
      onboardingNotCompleted: (pages, currentIndex, _) {
        final nextIndex = currentIndex + 1;
        if (nextIndex < pages.length) {
          emit(
            OnboardingState.onboardingNotCompleted(
              pages: pages,
              currentPageIndex: nextIndex,
              isLastPage: nextIndex == pages.length - 1,
            ),
          );
        } else {
          emit(const OnboardingState.onboardingCompleted());
        }
      },
      orElse: () {},
    );
  }

  void _onSkipOnboarding(Emitter<OnboardingState> emit) {
    emit(const OnboardingState.onboardingCompleted());
  }

  List<OnboardingPageEntity> _getOnboardingPages() {
    return [
      const OnboardingPageEntity(
        titleKey: 'welcome',
        descriptionKey: 'we_are_happy_to_have_you_join_our_store',
        imagePath: 'assets/images/onboarding/onboarding1.png',
      ),
      const OnboardingPageEntity(
        titleKey: 'get_to_know_the_application_interface',
        descriptionKey: 'here_you_will_find_tasks_requests_alerts_and_filters',
        imagePath: 'assets/images/onboarding/onboarding2.png',
      ),
      const OnboardingPageEntity(
        titleKey: 'documentation_with_photos_and_videos',
        descriptionKey: 'make_sure_the_images_are_clear_and_correct',
        imagePath: 'assets/images/onboarding/onboarding3.png',
      ),
    ];
  }
}
