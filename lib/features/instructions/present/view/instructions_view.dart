import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/routing/navigation_service.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/translated_text.dart';
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
      getIt<InstructionsBloc>().add(
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
              title: TrText(
                'التعليمات',
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
                            getIt<InstructionsBloc>().add(
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
                                TrText(
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
                                TrText(
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
                                child: TrText(
                                  'تخطي',
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
                            getIt<InstructionsBloc>().add(
                              InstructionsEvent.pageChanged(
                                pageIndex: currentPageIndex + 1,
                              ),
                            );
                          }
                        },
                        text: isLastPage ? 'ابدأ' : 'التالي',
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
                      TrText(errorMessage),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        child: const TrText('إعادة المحاولة'),
                      ),
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
        return 'مرحبا';
      case 'we_are_happy_to_have_you_join_our_store':
        return 'نحن سعداء بانضمامك لمتجرنا';
      case 'get_to_know_the_application_interface':
        return 'تعرف على واجهة التطبيق';
      case 'here_you_will_find_tasks_requests_alerts_and_filters':
        return 'ستجد هنا المهام والطلبات والتنبيهات والفلاتر';
      case 'documentation_with_photos_and_videos':
        return 'توثيق مع صور ومقاطع فيديو';
      case 'make_sure_the_images_are_clear_and_correct':
        return 'تأكد من أن الصور واضحة والعدد الصحيح من النسخ من القرآن قبل الإرسال';
      case 'doNotDeleteTheDocumentationFiles':
        return 'لا تقم بحذف ملفات التوثيق المحفوظة محلياً المستخدمة لتوثيق طلب حتى يتم الموافقة عليها من قبل الإدارة';
      case 'doNotDeleteTheLocallyStoredPhotoAndVideoFilesUsedToDocumentAnApplicationUntilTheyAreApprovedByTheAdministration':
        return 'لا تقم بحذف ملفات التوثيق المحفوظة محلياً المستخدمة لتوثيق طلب حتى يتم الموافقة عليها من قبل الإدارة';
      default:
        return key;
    }
  }
}
