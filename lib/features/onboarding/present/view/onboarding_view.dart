import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/routing/navigation_service.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../home/present/view/home_view.dart';
import '../bloc/onboarding_bloc.dart';
import 'widgets/onboarding_page.dart';

class InstructionsView extends StatefulWidget {
  const InstructionsView({super.key});
  static const String routeName = 'instructions';

  @override
  State<InstructionsView> createState() => _InstructionsViewState();
}

class _InstructionsViewState extends State<InstructionsView> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      backgroundColor: const Color(0xFF003A46),
      appBar: Navigator.canPop(context)
          ? CustomAppBar(
              title: t.instructions,
            )
          : null,
      body: BlocProvider(
        create: (context) => getIt<OnboardingBloc>(),
        child: BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: (
                pages,
                currentPageIndex,
                isLastPage,
              ) {
                if (_pageController.hasClients &&
                    _pageController.page?.round() != currentPageIndex) {
                  _pageController.animateToPage(
                    currentPageIndex,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (
                pages,
                currentPageIndex,
                isLastPage,
              ) {
                return Stack(
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      onPageChanged: (i) {
                        context.read<OnboardingBloc>().add(
                              OnboardingEvent.pageChanged(pageIndex: i),
                            );
                      },
                      itemCount: pages.length,
                      itemBuilder: (context, index) {
                        final page = pages[index];
                        return OnboardingWidget(
                          title: t.byKey(page.titleKey),
                          description: t.byKey(page.descriptionKey),
                          imagePath: page.imagePath,
                          isLastPage: isLastPage,
                        );
                      },
                    ),
                    Positioned(
                      top: MediaQuery.of(context).padding.top + 16,
                      right: 16,
                      child: Navigator.canPop(context)
                          ? const SizedBox.shrink()
                          : TextButton(
                              onPressed: () {
                                NavigationService.navigateAndRemoveUntil(
                                  context: context,
                                  routeName: HomeView.routeName,
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
                    Positioned(
                      bottom: MediaQuery.of(context).padding.bottom + 100,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          pages.length,
                          (i) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: currentPageIndex == i ? 24 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: currentPageIndex == i
                                  ? AppColors.primary
                                  : Colors.grey[300],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      right: 24,
                      bottom: MediaQuery.of(context).padding.bottom + 32,
                      child: ElevatedButton(
                        onPressed: () {
                          if (isLastPage) {
                            NavigationService.navigateAndRemoveUntil(
                              context: context,
                              routeName: HomeView.routeName,
                            );
                          } else {
                            context.read<OnboardingBloc>().add(
                                  OnboardingEvent.pageChanged(
                                    pageIndex: currentPageIndex + 1,
                                  ),
                                );
                          }
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
              loading: () => const Center(child: CircularProgressIndicator()),
              failure: (errorMessage) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(errorMessage),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(t.retry),
                    ),
                  ],
                ),
              ),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
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
      case 'doNotDeleteTheDocumentationFiles':
        return doNotDeleteTheDocumentationFiles;
      case 'doNotDeleteTheLocallyStoredPhotoAndVideoFilesUsedToDocumentAnApplicationUntilTheyAreApprovedByTheAdministration':
        return doNotDeleteTheLocallyStoredPhotoAndVideoFilesUsedToDocumentAnApplicationUntilTheyAreApprovedByTheAdministration;
      default:
        return key;
    }
  }
}
