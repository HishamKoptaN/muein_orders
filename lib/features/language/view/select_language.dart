import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../l10n/app_localizations.dart';
import '../../../core/routing/navigation_service.dart';
import '../../auth/auth_choice/present/views/auth_choice_view.dart';
import '../bloc/language_bloc.dart';

class SelectLanguageView extends StatelessWidget {
  const SelectLanguageView({super.key});
  static const String routeName = 'select-language';

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> languages = [
      {'name': 'العربية', 'code': 'ar'}, // Arabic
      {'name': 'English', 'code': 'en'}, // English
      {'name': 'Luganda (Uganda)', 'code': 'lg-UG'}, // Luganda - Uganda
      {'name': 'Kiswahili (Tanzania)', 'code': 'sw-TZ'}, // Swahili - Tanzania
      {'name': 'Kiswahili (Kenya)', 'code': 'sw-KE'}, // Swahili - Kenya
    ];

    final t = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: const Color(0xFF003A45),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BlocBuilder<LanguageBloc, LanguageState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (currentLocale) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 80),
                      Text(
                        t.selectLanguage,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: languages.length,
                          itemBuilder: (
                            context,
                            index,
                          ) {
                            final langCode =
                                languages[index]['code']!.split('-').first;
                            final countryCode =
                                languages[index]['code']!.split('-').length > 1
                                    ? languages[index]['code']!
                                        .split('-')
                                        .last
                                        .toUpperCase()
                                    : null;
                            final isSelected = currentLocale.languageCode ==
                                    langCode &&
                                (countryCode == null ||
                                    currentLocale.countryCode?.toUpperCase() ==
                                        countryCode);
                            return GestureDetector(
                              onTap: () {
                                final parts =
                                    languages[index]['code']!.split('-');
                                final langCode = parts[0];
                                final countryCode =
                                    parts.length > 1 ? parts[1] : null;
                                context.read<LanguageBloc>().add(
                                      LanguageEvent.changeLanguage(
                                        languageCode: langCode,
                                        countryCode: countryCode,
                                      ),
                                    );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? const Color(0xFF83BEA8)
                                            .withValues(alpha: 0.2)
                                        : Colors.white.withValues(alpha: 0.1),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: isSelected
                                          ? const Color(0xFF83BEA8)
                                          : Colors.white.withValues(alpha: 0.5),
                                      width: isSelected ? 2 : 1,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      languages[index]['name']!,
                                      style: TextStyle(
                                        color: isSelected
                                            ? const Color(0xFF83BEA8)
                                            : Colors.white,
                                        fontSize: 18,
                                        fontWeight: isSelected
                                            ? FontWeight.bold
                                            : FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          key: const Key('follow'),
                          onPressed: () {
                            NavigationService.navigateTo(
                              context: context,
                              routeName: AuthChoiceView.routeName,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF83BEA8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            disabledBackgroundColor: Colors.grey[400],
                          ),
                          child: Text(
                            t.followUp,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                orElse: () => const SizedBox(),
              );
            },
          ),
        ),
      ),
    );
  }
}
