import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../../core/localization/auto_localizer.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/translated_text.dart';
import '../../../../../l10n/app_localizations.dart';
import '../bloc/change_pass_bloc.dart';

class ChangePassView extends StatefulWidget {
  static const String routeName = 'change-password';
  const ChangePassView({super.key});

  @override
  State<ChangePassView> createState() => _ChangePassViewState();
}

class _ChangePassViewState extends State<ChangePassView> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return DebugAutoFill(
      child: CustomScaffold(
        appBar: AppBar(
          title: const TrText(
            'تغيير كلمة المرور',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const BackButton(color: Colors.black),
        ),
        body: BlocProvider.value(
          value: getIt<ChangePassBloc>(),
          child: BlocConsumer<ChangePassBloc, ChangePassState>(
            listener: (context, state) async {
              await state.whenOrNull(
                success: () {
                  _passwordController.clear();
                  _confirmPasswordController.clear();
                  context.showSuccessSnackBar(
                    title: 'نجاح',
                    message: 'تم تغيير كلمة المرور',
                  );
                },
                failure: (error) {
                  context.showErrorSnackBar(title: 'خطأ', message: error);
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (pass, confirmPass, formzSubmissionStatus) {
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      spacing: 20.h,
                      children: [
                        AppTextField(
                          controller: _passwordController,
                          hintText: 'كلمة المرور الجديدة',
                          obscureText: true,
                          onChanged: (v) {
                            getIt<ChangePassBloc>().add(
                              ChangePassEvent.dataChanged(
                                password: PasswordInput.dirty(v),
                              ),
                            );
                          },
                        ),
                        AppTextField(
                          controller: _confirmPasswordController,
                          hintText: 'تأكيد كلمة المرور الجديدة',
                          obscureText: true,
                          onChanged: (v) {
                            getIt<ChangePassBloc>().add(
                              ChangePassEvent.dataChanged(
                                confirmPassword: PasswordInput.dirty(v),
                              ),
                            );
                          },
                        ),
                        Gap(10.h),
                        CustomBtnWidget(
                          text: 'تعيين',
                          formzSubmissionStatus: formzSubmissionStatus,
                          onPressed: () {
                            if (formzSubmissionStatus.isSuccess) {
                              getIt<ChangePassBloc>().add(
                                const ChangePassEvent.update(),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon;
  final bool obscureText;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  const AppTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFF0EFEF)),
      ),
      child: FutureBuilder(
        future: AutoLocalizer.translate(hintText, lang),
        initialData: hintText,
        builder: (context, asyncSnapshot) {
          return TextFormField(
            controller: controller,
            onChanged: onChanged,
            obscureText: obscureText,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: asyncSnapshot.data ?? '',
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),
              border: InputBorder.none,
              suffixIcon: suffixIcon != null
                  ? Icon(suffixIcon, color: Colors.grey)
                  : null,
            ),
          );
        },
      ),
    );
  }
}

class DebugAutoFill extends StatefulWidget {
  final Widget child;
  const DebugAutoFill({super.key, required this.child});

  @override
  State<DebugAutoFill> createState() => _DebugAutoFillState();
}

class _DebugAutoFillState extends State<DebugAutoFill> {
  int _tapCount = 0;
  DateTime? _lastTap;

  void _handleTap(BuildContext context) {
    final now = DateTime.now();

    if (_lastTap != null &&
        now.difference(_lastTap!) > const Duration(seconds: 1)) {
      _tapCount = 0;
    }

    _lastTap = now;
    _tapCount++;
    debugPrint('Tap detected! Count: $_tapCount');

    if (_tapCount >= 3) {
      debugPrint('✅ Triple tap detected! Running login scenario...');
      _tapCount = 0;
      _runLoginScenario(context);
    }
  }

  void _runLoginScenario(BuildContext context) {
    debugPrint('🚀 Running Debug Autofill Login with BLoC...');

    const testEmails = [
      'heshamkoptan@gmail.com',
      'heshamkoptan@gmail.com',
      'heshamkoptan@gmail.com',
    ];

    final testEmail = testEmails[0];

    getIt<ChangePassBloc>()
      ..add(
        ChangePassEvent.dataChanged(password: PasswordInput.dirty(testEmail)),
      )
      ..add(const ChangePassEvent.update());

    debugPrint('✅ Autofill Login Done (via BLoC)');
    debugPrint('🔍 Check your email at: $testEmail');
    debugPrint('⚠️ Make sure this email is authorized in Firebase Console');
  }

  @override
  Widget build(BuildContext context) {
    if (kReleaseMode) return widget.child;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _handleTap(context),
      child: widget.child,
    );
  }
}
