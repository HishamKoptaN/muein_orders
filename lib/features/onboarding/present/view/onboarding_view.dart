import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/routing/navigation_service.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../orders/present/views/orders_view.dart';
import '../bloc/onboarding_bloc.dart';
import 'widgets/onboarding_page.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});
  static const String routeName = 'onboarding';

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<OnboardingBloc>(),
        child: BlocListener<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            context
                .read<OnboardingBloc>()
                .add(const OnboardingEvent.checkOnboardingStatus());
            state.whenOrNull(
              onboardingCompleted: () {
                // Navigate to orders screen
                NavigationService.navigateAndRemoveUntil(
                  context: context,
                  routeName: OrdersView.routeName,
                );
              },
            );
          },
          child: BlocBuilder<OnboardingBloc, OnboardingState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                failure: (errorMessage) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(errorMessage),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => context.read<OnboardingBloc>().add(
                              const OnboardingEvent.checkOnboardingStatus(),
                            ),
                        child: Text(t.retry),
                      ),
                    ],
                  ),
                ),
                onboardingNotCompleted: (pages, currentPageIndex, isLastPage) {
                  return Stack(
                    children: [
                      // PageView
                      PageView.builder(
                        controller: _pageController,
                        onPageChanged: (int index) {
                          context.read<OnboardingBloc>().add(
                                OnboardingEvent.pageChanged(index),
                              );
                        },
                        itemCount: pages.length,
                        itemBuilder: (context, index) {
                          final page = pages[index];
                          return OnboardingPage(
                            title: t.byKey(page.titleKey),
                            description: t.byKey(page.descriptionKey),
                            imagePath: page.imagePath,
                            isLastPage: index == pages.length - 1,
                          );
                        },
                      ),

                      // Skip Button
                      Positioned(
                        top: MediaQuery.of(context).padding.top + 16,
                        right: 16,
                        child: TextButton(
                          onPressed: () {
                            context.read<OnboardingBloc>().add(
                                  const OnboardingEvent.skipOnboarding(),
                                );
                          },
                          child: Text(
                            t.skip,
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),

                      // Page Indicators
                      Positioned(
                        bottom: MediaQuery.of(context).padding.bottom + 100,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            pages.length,
                            (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              width: currentPageIndex == index ? 24 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: currentPageIndex == index
                                    ? AppColors.primary
                                    : Colors.grey[300],
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Next/Get Started Button
                      Positioned(
                        left: 24,
                        right: 24,
                        bottom: MediaQuery.of(context).padding.bottom + 32,
                        child: ElevatedButton(
                          onPressed: () {
                            context.read<OnboardingBloc>().add(
                                  const OnboardingEvent.nextPage(),
                                );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            isLastPage ? t.start : t.next,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                onboardingCompleted: () => const SizedBox.shrink(),
              );
            },
          ),
        ),
      ),
    );
  }
}

extension LocalizationHelper on AppLocalizations {
  String byKey(String key) {
    switch (key) {
      case 'welcome':
        return welcome;
      case 'we_are_happy_to_have_you_join_our_store':
        return we_are_happy_to_have_you_join_our_store;
      case 'get_to_know_the_application_interface':
        return get_to_know_the_application_interface;
      case 'here_you_will_find_tasks_requests_alerts_and_filters':
        return here_you_will_find_tasks_requests_alerts_and_filters;
      case 'documentation_with_photos_and_videos':
        return documentation_with_photos_and_videos;
      case 'make_sure_the_images_are_clear_and_correct':
        return make_sure_the_images_are_clear_and_the_number_of_copies_of_the_quran_is_correct_before_sending;
      default:
        return key;
    }
  }
}
