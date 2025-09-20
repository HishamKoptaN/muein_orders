import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/onboarding_page_entity.dart';
import '../../domain/repo/onboarding_rep.dart';
part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final OnboardingRepo repo;
  final int totalPages = 3;

  OnboardingBloc({required this.repo})
      : super(const OnboardingState.loading()) {
    on<OnboardingEvent>((event, emit) async {
      await event.whenOrNull(
        checkOnboardingStatus: () => _onCheckOnboardingStatus(emit),
        completeOnboarding: () => _onCompleteOnboarding(emit),
        pageChanged: (index) => _onPageChanged(index, emit),
        nextPage: () => _onNextPage(emit),
        skipOnboarding: () => _onSkipOnboarding(emit),
      );
    });
  }
  Future<void> _onCheckOnboardingStatus(Emitter<OnboardingState> emit) async {
    emit(const OnboardingState.loading());
    try {
      final isCompleted = await repo.isOnboardingCompleted();
      if (isCompleted) {
        emit(const OnboardingState.onboardingCompleted());
      } else {
        final pages = repo.getOnboardingPages();
        emit(
          OnboardingState.onboardingNotCompleted(
            pages: pages,
            currentPageIndex: 0,
            isLastPage: pages.isEmpty,
          ),
        );
      }
    } catch (e) {
      emit(
        const OnboardingState.failure(
            errorMessage: 'Error loading onboarding content'),
      );
    }
  }

  Future<void> _onCompleteOnboarding(Emitter<OnboardingState> emit) async {
    try {
      await repo.completeOnboarding();
      emit(const OnboardingState.onboardingCompleted());
    } catch (e) {
      emit(
        const OnboardingState.failure(
          errorMessage: 'Failed to save preferences',
        ),
      );
    }
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
          add(const OnboardingEvent.completeOnboarding());
        }
      },
      orElse: () {},
    );
  }

  void _onSkipOnboarding(Emitter<OnboardingState> emit) {
    add(const OnboardingEvent.completeOnboarding());
  }
}
