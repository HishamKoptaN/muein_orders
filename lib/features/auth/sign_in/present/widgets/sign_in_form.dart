import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mubin_orders/core/extensions/app_localizations_extension.dart';
import 'package:mubin_orders/core/widgets/custom_text_form_field.dart';
import 'package:mubin_orders/l10n/app_localizations.dart';
import 'package:storage_utils/storage_utils.dart';

import '../../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../../core/di/get_it_instance.dart';
import '../../present/bloc/sign_in_bloc.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool _remember = false;

  @override
  void initState() {
    super.initState();
    _loadRemember();
  }

  Future<void> _loadRemember() async {
    final prefs = getIt<PrefsStorageService>();
    _remember = await prefs.getBool(SharedPrefKeys.isLoged) ?? false;
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (
            email,
            password,
            isValid,
            isPasswordVisible,
            status,
            errorMessage,
          ) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                CustomTextFormField(
                  onChanged: (v) => context
                      .read<SignInBloc>()
                      .add(SignInEvent.emailChanged(v)),
                  hintText: t.emailHint,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  onChanged: (v) => context
                      .read<SignInBloc>()
                      .add(SignInEvent.passwordChanged(v)),
                  hintText: t.password,
                  obscureText: !isPasswordVisible,
                  suffixIcon: Icon(
                    isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                    color: Colors.white.withOpacity(0.57),
                    size: 19,
                  ),
                  onToggleObscure: () => context
                      .read<SignInBloc>()
                      .add(const SignInEvent.togglePasswordVisibility()),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextButton(
                      onPressed: () => context.go('/forgot-password'),
                      child: Text(
                        t.forgotPassword,
                        style: const TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        setState(() => _remember = !_remember);
                        final prefs = getIt<PrefsStorageService>();
                        await prefs.setBool(SharedPrefKeys.isLoged, _remember);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.max,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(width: 8),
                          Text(
                            t.rememberMe,
                            style: const TextStyle(
                              fontFamily: 'Almarai',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: _remember
                                  ? const Color(0xFF83BEA8)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                color: const Color(0xFF83BEA8),
                                width: 2,
                              ),
                            ),
                            child: _remember
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 16,
                                  )
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
