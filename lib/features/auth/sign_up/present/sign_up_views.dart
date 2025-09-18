import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../l10n/app_localizations.dart';
import 'bloc/sign_up_bloc.dart';

class SignUpView extends StatelessWidget {
  static const String routeName = 'SignUpView';
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003A46),
      body: Center(
        child: Container(
          width: 375,
          height: 847,
          decoration: BoxDecoration(
            color: const Color(0xFF003A46),
            borderRadius: BorderRadius.circular(24),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Stack(
              fit: StackFit.expand,
              children: [
                _BackgroundDecorations(),
                _SignUpContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BackgroundDecorations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Rectangle 7
        Positioned(
          left: -77,
          top: -7,
          child: Container(
            width: 208,
            height: 101,
            decoration: BoxDecoration(
              color: const Color(0xFF003A45),
              borderRadius: BorderRadius.circular(24),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(),
            ),
          ),
        ),
        // Rectangle 8
        Positioned(
          left: -77,
          top: -71,
          child: Container(
            width: 208,
            height: 101,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 58, 69, 0.42),
              borderRadius: BorderRadius.circular(24),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(),
            ),
          ),
        ),
        // Rectangle 34626650
        Positioned(
          left: -177,
          top: -140,
          child: Transform.rotate(
            angle: 112.44 * 3.1416 / 180,
            child: Container(
              width: 408.39,
              height: 247,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(128, 187, 166, 0.39),
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SignUpContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Column(
      children: [
        // شعار
        const SizedBox(height: 12),
        Container(
          width: 234,
          height: 117,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/لوجوز مبين-01.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 18),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: BlocBuilder<SignUpBloc, SignUpState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (
                    name,
                    email,
                    phone,
                    countryId,
                    password,
                    confirmPassword,
                    obscurePassword,
                    formzSubmissionStatus,
                    loading,
                  ) {
                    return ListView(
                      children: [
                        // Email
                        CustomTextFormField(
                          initialValue: email.value,
                          hintText: t.emailHint,
                          prefixIcon: const Icon(Icons.email_outlined),
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) => context.read<SignUpBloc>().add(
                                SignUpEvent.dataChanged(
                                  email: EmailInput.dirty(
                                    value,
                                  ),
                                ),
                              ),
                        ),
                        const SizedBox(height: 16),

                        // Name
                        CustomTextFormField(
                          initialValue: name.value,
                          hintText: t.firstName,
                          onChanged: (value) => context.read<SignUpBloc>().add(
                                SignUpEvent.dataChanged(
                                  name: GenericFormzInput.dirty(value),
                                ),
                              ),
                        ),
                        const SizedBox(height: 16),
                        const SizedBox(height: 16),

                        // Phone
                        CustomTextFormField(
                          initialValue: phone.value,
                          hintText: t.phoneNumber,
                          keyboardType: TextInputType.phone,
                          onChanged: (value) => context.read<SignUpBloc>().add(
                                SignUpEvent.dataChanged(
                                  phone: PhoneNumberInput.dirty(value),
                                ),
                              ),
                        ),
                        const SizedBox(height: 16),

                        // Country
                        CustomTextFormField(
                          initialValue: countryId.value,
                          hintText: t.country,
                          onChanged: (value) => context.read<SignUpBloc>().add(
                                SignUpEvent.dataChanged(
                                  countryId: GenericFormzInput.dirty(value),
                                ),
                              ),
                        ),
                        const SizedBox(height: 16),

                        // Password
                        CustomTextFormField(
                          initialValue: password.value,
                          hintText: t.password,
                          prefixIcon: const Icon(Icons.lock_outline),
                          isPassword: true,
                          obscureText: obscurePassword.value ?? true,
                          showPasswordToggle: true,
                          onToggleObscure: () => context.read<SignUpBloc>().add(
                                SignUpEvent.dataChanged(
                                  obscurePassword: GenericFormzInput.dirty(
                                    !obscurePassword.value,
                                  ),
                                ),
                              ),
                          onChanged: (v) => context.read<SignUpBloc>().add(
                                SignUpEvent.dataChanged(
                                  password: PasswordInput.dirty(v),
                                ),
                              ),
                        ),
                        const SizedBox(height: 16),

                        // Confirm Password
                        CustomTextFormField(
                          initialValue: confirmPassword.value,
                          hintText: t.confirmPassword,
                          isPassword: true,
                          onChanged: (v) => context.read<SignUpBloc>().add(
                                SignUpEvent.dataChanged(
                                  confirmPassword: ConfirmPasswordInput.dirty(
                                    password: v,
                                  ),
                                ),
                              ),
                        ),
                        const SizedBox(height: 32),

                        // Submit Button
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF83BEA8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            onPressed: () {
                              context
                                  .read<SignUpBloc>()
                                  .add(const SignUpEvent.signUp());
                            },
                            child: const Text(
                              'إنشاء حساب',
                              style: TextStyle(
                                fontFamily: 'Almarai',
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
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
      ],
    );
  }
}
