import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../l10n/app_localizations.dart';
import '../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../core/routing/navigation_service.dart';
import '../../../core/widgets/navigation/custom_app_bar.dart';
import '../../auth/auth_choice/present/views/auth_choice_view.dart';
import '../bloc/language_bloc.dart';

// قائمة اللغات المتاحة في التطبيق
// العربية
// الانجليزية
// الفرنسية
// كيينا
// تنزانيا
// الكاميرون
// غانا
// غينيا
// بنين
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
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      backgroundColor: const Color(0xFF003A45),
      appBar: Navigator.canPop(context)
          ? CustomAppBar(title: t.changeLanguage)
          : null,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: BlocBuilder<LanguageBloc, LanguageState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loaded: (currentLocale) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const SizedBox(height: 40),
                                Text(
                                  t.selectLanguage,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 32),
                                ...languages.map((language) {
                                  final langCode = language['code']!
                                      .split('-')
                                      .first;
                                  final countryCode =
                                      language['code']!.split('-').length > 1
                                      ? language['code']!
                                            .split('-')
                                            .last
                                            .toUpperCase()
                                      : null;
                                  final isSelected =
                                      currentLocale.languageCode == langCode &&
                                      (countryCode == null ||
                                          currentLocale.countryCode
                                                  ?.toUpperCase() ==
                                              countryCode);

                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 12.0,
                                    ),
                                    child: Material(
                                      color: isSelected
                                          ? const Color(
                                              0xFF83BEA8,
                                            ).withOpacity(0.2)
                                          : Colors.white.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                      child: InkWell(
                                        onTap: () {
                                          final parts = language['code']!.split(
                                            '-',
                                          );
                                          context.read<LanguageBloc>().add(
                                            LanguageEvent.changeLanguage(
                                              languageCode: parts[0],
                                              countryCode: parts.length > 1
                                                  ? parts[1]
                                                  : null,
                                            ),
                                          );
                                        },
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 16.0,
                                            horizontal: 20.0,
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  language['name']!,
                                                  style: TextStyle(
                                                    color: isSelected
                                                        ? const Color(
                                                            0xFF83BEA8,
                                                          )
                                                        : Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: isSelected
                                                        ? FontWeight.bold
                                                        : FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                              if (isSelected)
                                                const Icon(
                                                  Icons.check_circle,
                                                  color: Color(0xFF83BEA8),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                                const SizedBox(height: 20),
                                if (!Navigator.canPop(context))
                                  ElevatedButton(
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
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                    ),
                                    child: Text(
                                      t.followUp,
                                      style: const TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                const SizedBox(height: 20),
                              ],
                            );
                          },
                          orElse: () =>
                              const Center(child: CircularProgressIndicator()),
                        );
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
