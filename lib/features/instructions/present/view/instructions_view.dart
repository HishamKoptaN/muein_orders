import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../../../../core/routing/navigation_service.dart';
import '../../../../core/widgets/translated_text.dart';
import '../../../home_features/home/present/view/stats_view.dart';
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
    return CustomScaffold(
      backgroundColor: context.colorScheme.primary,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.black),
        title: TrText(
          'التعليمات',
          style: context.textTheme.titleMedium?.copyWith(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: BlocConsumer<InstructionsBloc, InstructionsState>(
          bloc: getIt<InstructionsBloc>(),
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
                  mainAxisAlignment: .center,
                  children: [
                    Gap(60.h),
                    SizedBox(
                      height: 360.h,
                      width: 260.w,
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
                            mainAxisAlignment: .start,
                            children: [
                              Image.asset(
                                page.imagePath,
                                fit: .fill,
                                height: 220.h,
                                width: 260.w,
                              ),
                              Gap(32.h),
                              TrText(
                                page.titleKey,
                                textAlign: TextAlign.center,
                                style: context.textTheme.bodyLarge?.copyWith(
                                  color: context.colorScheme.onPrimary,
                                ),
                              ),
                              Gap(16.h),
                              // Description
                              TrText(
                                page.descriptionKey,
                                style: context.textTheme.bodyLarge?.copyWith(
                                  color: context.colorScheme.onPrimary,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Gap(20.h),
                    Row(
                      mainAxisAlignment: .center,
                      children: List.generate(pages.length, (i) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const .symmetric(horizontal: 4),
                          width: currentPageIndex == i ? 24 : 8,
                          height: 8.h,
                          decoration: BoxDecoration(
                            borderRadius: .circular(6.r),
                            color: currentPageIndex == i
                                ? context.colorScheme.onPrimary
                                : Colors.grey[300],
                          ),
                        );
                      }),
                    ),
                    Gap(20.h),
                    SizedBox(
                      child:
                          //  Navigator.canPop(context)
                          //     ? const SizedBox.shrink()
                          //     :
                          TextButton(
                            onPressed: () {
                              NavigationService.navigateAndRemoveUntil(
                                context: context,
                                routeName: StatsView.routeName,
                              );
                            },
                            child: TrText(
                              'تخطي',
                              style: context.textTheme.titleLarge?.copyWith(
                                color: context.colorScheme.onPrimary,
                              ),
                            ),
                          ),
                    ),
                    Gap(20.h),
                    FilledButton(
                      onPressed: () {
                        if (isLastPage) {
                          NavigationService.navigateAndRemoveUntil(
                            context: context,
                            routeName: StatsView.routeName,
                          );
                        } else {
                          getIt<InstructionsBloc>().add(
                            InstructionsEvent.pageChanged(
                              pageIndex: currentPageIndex + 1,
                            ),
                          );
                        }
                      },
                      child: TrText(isLastPage ? 'ابدأ' : 'التالي'),
                    ),
                    Gap(24.h),
                  ],
                );
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              failure: (errorMessage) {
                return Center(
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
                );
              },
              orElse: () {
                return const Center(child: CircularProgressIndicator());
              },
            );
          },
        ),
      ),
    );
  }
}
