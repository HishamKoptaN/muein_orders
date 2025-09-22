import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:form_inputs/form_inputs/email_input.dart';
import 'package:formz/formz.dart';

import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../l10n/app_localizations.dart';
import '../bloc/forgot_pass_bloc.dart';

class ForgotPassView extends StatelessWidget {
  static const String routeName = 'forgot-password';
  const ForgotPassView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            t.forgotPassword,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocConsumer<ForgotPassBloc, ForgotPassState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(
                      SnackBar(
                        content: Text(
                          t.apPasswordResetLinkHasBeenSentToYourEmail,
                        ),
                        duration: const Duration(seconds: 2),
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(
                          label: t.ok,
                          onPressed:
                              ScaffoldMessenger.of(context).hideCurrentSnackBar,
                        ),
                      ),
                    )
                    .closed
                    .then(
                  (_) {
                    NavigationService.goBack(context);
                  },
                );
              },
              failure: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      error,
                    ),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (
                email,
                formzSubmissionStatus,
              ) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      CustomTextFormField(
                        initialValue: email.value,
                        keyboardType: TextInputType.emailAddress,
                        labelText: t.emailHint,
                        suffixIcon: const Icon(
                          Icons.mail,
                        ),
                        onChanged: (value) {
                          context.read<ForgotPassBloc>().add(
                                ForgotPassEvent.dataChanged(
                                  email: EmailInput.dirty(
                                    value,
                                  ),
                                ),
                              );
                        },
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return t.required;
                          }
                          if (!val.contains('@')) {
                            return t.invalidEmail;
                          }
                          return null;
                        },
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          const Text(
                            '*',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            t.aLinkWillBeSentToYouToResetYourPassword,
                            style: const TextStyle(
                              fontFamily: 'Almarai',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              height: 15 / 13,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: 332,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: !formzSubmissionStatus.isInProgress
                              ? () {
                                  context.read<ForgotPassBloc>().add(
                                        const ForgotPassEvent
                                            .sendPassResetEmail(),
                                      );
                                }
                              : null,
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.resolveWith(
                              (states) => const Color(0xFF83BEA8),
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            elevation: WidgetStateProperty.all(0),
                          ),
                          child: formzSubmissionStatus.isInProgress
                              ? const CustomCircularProgress()
                              : Text(
                                  t.send,
                                  style: TextStyle(
                                    fontFamily: 'Almarai',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: email.value.isNotEmpty &&
                                            email.value.contains('@')
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
