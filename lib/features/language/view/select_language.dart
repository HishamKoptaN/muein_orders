import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/services/language_service.dart';
import '../../../../l10n/app_localizations.dart';
import '../../auth/auth_choice/present/views/auth_choice_view.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});
  static const String routeName = 'selectLanguage';

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  bool _isLoading = true;
  bool _isSaving = false;
  String? _selectedLanguageCode;

  @override
  void initState() {
    super.initState();
    _loadSavedLanguage();
  }

  Future<void> _loadSavedLanguage() async {
    final savedLanguage = await LanguageService.getLanguage();
    if (mounted) {
      setState(() {
        _selectedLanguageCode = savedLanguage;
        _isLoading = false;
      });
    }
  }

  Future<void> _saveLanguage() async {
    if (_selectedLanguageCode == null || _isSaving) return;
    setState(() => _isSaving = true);

    try {
      // Save the selected language
      await LanguageService.saveLanguage(_selectedLanguageCode!);

      // Update app locale
      Get.updateLocale(Locale(_selectedLanguageCode!));

      // Navigate to AuthChoiceView
      if (mounted) {
        // Using GoRouter for navigation
        GoRouter.of(context).pushReplacementNamed(AuthChoiceView.routeName);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error saving language: ${e.toString()}')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isSaving = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    final List<Map<String, String>> languages = [
      {'name': 'العربية', 'code': 'ar'}, // Arabic (Egypt)
      {'name': 'English', 'code': 'en'}, // English
      {'name': 'Kiswahili (Tanzania)', 'code': 'sw-tz'}, // Kiswahili - Tanzania
      {'name': 'Kiswahili (Kenya)', 'code': 'sw-ke'}, // Kiswahili - Kenya
      {'name': 'Akan (Ghana)', 'code': 'ak'}, // Akan - Ghana
      {'name': 'Fon (Benin)', 'code': 'fon'}, // Fon - Benin
    ];
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: const Color(0xFF003A45),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
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
                    final isSelected =
                        _selectedLanguageCode == languages[index]['code'];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedLanguageCode = languages[index]['code'];
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFF83BEA8).withValues(alpha: 0.2)
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
                  onPressed: _selectedLanguageCode != null && !_isSaving
                      ? _saveLanguage
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF83BEA8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBackgroundColor: Colors.grey[400],
                  ),
                  child: _isSaving
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : Text(
                          t.follow,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
