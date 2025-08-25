import 'package:formz/formz.dart';
import 'package:mubin_orders/core/all_imports.dart';
import 'package:sign_in/sign_in/present/bloc/sign_in_bloc.dart';
import 'package:sign_in/sign_in/present/bloc/sign_in_event.dart';
import 'package:sign_in/sign_in/present/bloc/sign_in_state.dart';
import 'core/di/dependency_injection.dart';
import 'core/widgets/custom_password_form_field.dart';
import 'core/widgets/custom_text_form_field.dart';
import 'gen/assets.gen.dart';
import 'l10n/app_localizations.dart';

class SignInView extends StatelessWidget {
  final void Function(String token)? onSuccess;
  final dynamic customToast;
  final dynamic toastType;
  final Widget? customLogoImage;
  const SignInView({
    super.key,
    this.onSuccess,
    this.customToast,
    this.toastType,
    this.customLogoImage,
  });
  static const String routeName = "SignInView";
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<SignInBloc>(),
          child: BlocConsumer<SignInBloc, SignInState>(
            listener: (
              context,
              state,
            ) {
              state.whenOrNull(
                success: (token) {
                  onSuccess?.call(
                    token,
                  );
                },
                linkSent: () {
                  customToast.showToast(
                    key: const Key(
                      'reset_toast',
                    ),
                    context: context,
                    title:
                        "تم ارسال رابط أعادة تعين كلمة المرور الي البريد الالكتروني",
                    toastType: toastType.success,
                  );
                },
                failure: (
                  apiErrorModel,
                ) {
                  customToast.showToast(
                    key: const Key(
                      'login_failure_toast',
                    ),
                    context: context,
                    title: apiErrorModel.error ?? '',
                    toastType: toastType.failure,
                  );
                },
              );
            },
            builder: (
              context,
              state,
            ) {
              return state.maybeWhen(
                loaded: (email, password, obscureText, formzSubmissionStatus) {
                  return Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          Assets.images.signInBackground.path,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Image.asset(
                                Assets.images.rectangle13.path,
                                width: 196,
                                height: 138,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomTextFormField(
                                    key: const Key(
                                      'email_field',
                                    ),
                                    hintText: t.email_hint,
                                    onChanged: (
                                      v,
                                    ) {
                                      context.read<SignInBloc>().add(
                                            SignInEvent.updateData(
                                              email: v,
                                            ),
                                          );
                                    },
                                    textInputType: TextInputType.emailAddress,
                                  ),
                                  CustomPasswordFormField(
                                    key: const Key('password_field'),
                                    onChanged: (
                                      v,
                                    ) {
                                      context.read<SignInBloc>().add(
                                            SignInEvent.updateData(
                                              password: v,
                                            ),
                                          );
                                    },
                                    obscureText: obscureText,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    hintText: t.password_hint,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 24,
                                      left: 24,
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          key: Key(
                                            'forgot_password_button',
                                          ),
                                          onPressed: () {
                                            if (email.isValid) {
                                              context.read<SignInBloc>().add(
                                                    SignInEvent.resetPass(),
                                                  );
                                            } else {
                                              customToast.showToast(
                                                key: Key(
                                                  'toast_button',
                                                ),
                                                context: context,
                                                title: "أدخل البريد الالكتروني",
                                                toastType: toastType.failure,
                                              );
                                            }
                                          },
                                          child: Text(
                                            'نسيت كلمة المرور؟',
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.black,
                                              fontFamily: 'Almarai',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    key: const Key(
                                      'login_button',
                                    ),
                                    onPressed: () {
                                      if (formzSubmissionStatus.isSuccess) {
                                        context.read<SignInBloc>().add(
                                              SignInEvent.fireSignIn(),
                                            );
                                      }
                                    },
                                    child: formzSubmissionStatus.isInProgress
                                        ? const Padding(
                                            padding: EdgeInsets.all(
                                              8.0,
                                            ),
                                            child: Center(
                                              child: CircularProgressIndicator(
                                                backgroundColor: Colors.green,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        : Text(
                                            t.login,
                                          ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                orElse: () {
                  return SizedBox();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
