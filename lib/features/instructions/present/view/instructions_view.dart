import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/routing/navigation_service.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../home/present/view/home_view.dart';
import '../bloc/instructions_bloc.dart';

class InstructionsView extends StatefulWidget {
  const InstructionsView({super.key});
  static const String routeName = 'instructions';

  @override
  State<InstructionsView> createState() => _InstructionsViewState();
}

class _InstructionsViewState extends State<InstructionsView> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_pageController.hasClients) {
        _pageController.jumpToPage(0);
      }
      context.read<InstructionsBloc>().add(
        const InstructionsEvent.pageChanged(pageIndex: 0),
      );
    });
  }

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
          ? AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              iconTheme: const IconThemeData(color: Colors.black),
              title: Text(
                t.instructions,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: BlocConsumer<InstructionsBloc, InstructionsState>(
            listener: (context, state) {
              state.whenOrNull(
                loaded: (pages, currentPageIndex, isLastPage) {
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
                loaded: (pages, currentPageIndex, isLastPage) {
                  return Column(
                    children: [
                      Gap(100.h),
                      SizedBox(
                        height: 460.h,
                        width: 261.w,
                        child: PageView.builder(
                          controller: _pageController,
                          physics: const NeverScrollableScrollPhysics(),
                          onPageChanged: (i) {
                            context.read<InstructionsBloc>().add(
                              InstructionsEvent.pageChanged(pageIndex: i),
                            );
                          },
                          itemCount: pages.length,
                          itemBuilder: (context, index) {
                            final page = pages[index];
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Image
                                Image.asset(
                                  page.imagePath,
                                  fit: BoxFit.fill,
                                  height: 265.h,
                                  width: 261.w,
                                ),
                                Gap(32.h),
                                // Title
                                Text(
                                  t.byKey(page.titleKey),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16.sp,
                                    letterSpacing: -0.22,
                                  ),
                                ),
                                Gap(16.h),
                                // Description
                                Text(
                                  t.byKey(page.descriptionKey),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16.sp,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Gap(20.h),
                      Row(
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
                      Gap(20.h),
                      SizedBox(
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
                      Gap(54.h),
                      CustomBtnWidget(
                        onPressed: () {
                          if (isLastPage) {
                            NavigationService.navigateAndRemoveUntil(
                              context: context,
                              routeName: HomeView.routeName,
                            );
                          } else {
                            context.read<InstructionsBloc>().add(
                              InstructionsEvent.pageChanged(
                                pageIndex: currentPageIndex + 1,
                              ),
                            );
                          }
                        },
                        text: isLastPage ? t.start : t.next,
                      ),
                      Gap(24.h),
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
                      ElevatedButton(onPressed: () {}, child: Text(t.retry)),
                    ],
                  ),
                ),
                orElse: () => const Center(child: CircularProgressIndicator()),
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
      case 'doNotDeleteTheDocumentationFiles':
        return doNotDeleteTheDocumentationFiles;
      case 'doNotDeleteTheLocallyStoredPhotoAndVideoFilesUsedToDocumentAnApplicationUntilTheyAreApprovedByTheAdministration':
        return doNotDeleteTheLocallyStoredPhotoAndVideoFilesUsedToDocumentAnApplicationUntilTheyAreApprovedByTheAdministration;
      default:
        return key;
    }
  }
}
