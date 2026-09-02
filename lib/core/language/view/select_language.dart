import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../di/dependency_injection.dart';
import '../../theme/core/extensions/theme_ext.dart';
import '../../widgets/custom_scaffold.dart';
import '../../widgets/navigation/custom_app_bar.dart';
import '../../widgets/translated_text.dart';
import '../bloc/language_bloc.dart';

class SelectLanguageView extends StatelessWidget {
  const SelectLanguageView({super.key});
  static const String routeName = 'select-language';

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> languages = [
      {'name': 'العربية', 'code': 'ar'}, // عربية عامة
      {'name': 'English', 'code': 'en'}, // إنجليزية عامة
      {'name': 'Kiswahili', 'code': 'sw'}, // سواحيلية عامة
      {'name': 'Français', 'code': 'fr'}, // فرنسية عامة
      {'name': 'Akan', 'code': 'ak'}, // الأكانية عامة
      {'name': 'Fulfulde', 'code': 'ff'}, // الفولانية عامة
      {'name': 'Yorùbá', 'code': 'yo'}, // اليوروبا عامة
      {'name': 'Luganda', 'code': 'lg'}, // اللوغندية عامة
    ];
    return CustomScaffold(
      backgroundColor: context.colorScheme.primary,
      appBar: const CustomAppBar(title: 'تغيير اللغة'),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: BlocBuilder<LanguageBloc, LanguageState>(
              bloc: getIt<LanguageBloc>(),
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (currentLocale) {
                    return BodyWidget(
                      currentLocale: currentLocale,
                      languages: languages,
                    );
                  },
                  orElse: () {
                    return Skeletonizer(
                      enabled: true,
                      child: BodyWidget(
                        languages: List.generate(10, (index) {
                          return {'name': 'language$index', 'code': 'en'};
                        }),
                        currentLocale: const Locale('ar'),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.languages,
    required this.currentLocale,
  });

  final List<Map<String, String>> languages;
  final Locale currentLocale;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      crossAxisAlignment: .stretch,
      children: [
        SizedBox(height: 40.h),
        TrText(
          'اختر اللغة',
          textAlign: .center,
          style: context.textTheme.displayLarge?.copyWith(
            color: context.colorScheme.onPrimary,
          ),
        ),
        SizedBox(height: 32.h),
        ...languages.map((language) {
          final langCode = language['code']!.split('-').first;
          final countryCode = language['code']!.split('-').length > 1
              ? language['code']!.split('-').last.toUpperCase()
              : null;
          final isSelected =
              currentLocale.languageCode == langCode &&
              (countryCode == null ||
                  currentLocale.countryCode?.toUpperCase() == countryCode);

          return Padding(
            padding: .only(bottom: 6.h),
            child: Material(
              color: isSelected
                  ? context.colorScheme.primaryFixed.withValues(alpha: 0.3)
                  : Colors.white.withValues(alpha: 0.1),
              borderRadius: .circular(6.r),
              child: InkWell(
                onTap: () {
                  final parts = language['code']!.split('-');
                  getIt<LanguageBloc>().add(
                    LanguageEvent.changeLanguage(
                      languageCode: parts[0],
                      countryCode: parts.length > 1 ? parts[1] : null,
                    ),
                  );
                },
                borderRadius: .circular(6.r),
                child: Container(
                  width: .infinity,
                  padding: .symmetric(vertical: 12.h, horizontal: 16.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          language['name']!,
                          style: context.textTheme.titleLarge?.copyWith(
                            fontWeight: isSelected ? .bold : .normal,
                            color: isSelected
                                ? context.colorScheme.onPrimary
                                : context.colorScheme.onPrimary.withValues(
                                    alpha: 0.6,
                                  ),
                          ),
                        ),
                      ),
                      if (isSelected)
                        Icon(
                          Icons.check_circle,
                          color: context.colorScheme.onPrimary,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
        // SizedBox(height: 20.h),
        // if (!Navigator.canPop(context))
        //   ElevatedButton(
        //     key: const Key('follow'),
        //     onPressed: () {
        //       NavigationService.pushNamed(
        //         context: context,
        //         routeName: AuthChoiceView.routeName,
        //       );
        //     },
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: const Color(0xFF83BEA8),
        //       shape: RoundedRectangleBorder(
        //         borderRadius: .circular(8.r),
        //       ),
        //       padding: .symmetric(vertical: 16.h),
        //     ),
        //     child: const TrText(
        //       'متابعة',
        //       style: TextStyle(
        //         fontSize: 17,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // const SizedBox(height: 20),
      ],
    );
  }
}
