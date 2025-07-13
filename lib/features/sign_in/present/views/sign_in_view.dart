import 'package:formz/formz.dart';
import '../../../../core/all_imports.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../../../../core/widgets/custom_logo_image.dart';
import '../../../../core/widgets/custom_password_form_field.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/snacke_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../home/home_view.dart';
import '../bloc/sign_in_bloc.dart';
import '../bloc/sign_in_event.dart';
import '../bloc/sign_in_state.dart';

class SignInView extends StatelessWidget {
  const SignInView({
    super.key,
  });
  static const String routeName = "SignInView";
  @override
  Widget build(
    BuildContext context,
  ) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      body: BlocConsumer<SignInBloc, SignInState>(
        listener: (
          context,
          state,
        ) {
          state.mapOrNull(
            success: (
              data,
            ) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                HomeView.routeName,
                (route) => false,
              );
            },
            linkSent: (data) {
              CustomToast.showToast(
                key: const Key('reset_toast'),
                context: context,
                title:
                    "تم ارسال رابط أعادة تعين كلمة المرور الي البريد الالكتروني",
                toastType: ToastType.success,
              );
            },
            failure: (error) {
              CustomToast.showToast(
                key: const Key('login_failure_toast'),
                context: context,
                title: error.apiErrorModel.error ?? '',
                toastType: ToastType.failure,
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (email, password, formzSubmissionStatus) {
              return Scaffold(
                body: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Gap(
                          40.h,
                        ),
                        const CustomLogoImage(
                          width: 180,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Gap(
                              40.h,
                            ),
                            TextFormField(
                              key: const Key('email_field'),
                              onChanged: (v) {
                                context.read<SignInBloc>().add(
                                      SignInEvent.updateData(email: v),
                                    );
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: t.email_hint,
                              ),
                            ),
                            Gap(
                              10.h,
                            ),
                            CustomPasswordFormField(
                              key: const Key('password_field'),
                              onChanged: (v) {
                                context.read<SignInBloc>().add(
                                      SignInEvent.updateData(password: v),
                                    );
                              },
                              hintText: t.password_hint,
                              textInputType: TextInputType.visiblePassword,
                            ),
                            Row(
                              children: [
                                TextButton(
                                  key: Key('forgot_password_button'),
                                  onPressed: () {
                                    if (email.isValid) {
                                      // context.read<SignInBloc>().add(
                                      //       SignInEvent.resetPass(),
                                      //     );
                                    } else {
                                      CustomToast.showToast(
                                        key: Key('toast_button'),
                                        context: context,
                                        title: "أدخل البريد الالكتروني",
                                        toastType: ToastType.failure,
                                      );
                                    }
                                  },
                                  child: const Text('نسيت كلمة المرور؟'),
                                ),
                              ],
                            ),
                            Gap(
                              20.h,
                            ),
                            ElevatedButton(
                              key: const Key('login_button'),
                              onPressed: () {
                                if (formzSubmissionStatus.isSuccess) {
                                  context
                                      .read<SignInBloc>()
                                      .add(SignInEvent.fireSignIn());
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                    formzSubmissionStatus.isSuccess
                                        ? Colors.amber
                                        : Colors.grey),
                              ),
                              // backgroundColor:
                              //     formzSubmissionStatus.isInProgressOrSuccess
                              //         ? Colors.amber
                              //         : Colors.grey,
                              child: formzSubmissionStatus.isInProgress
                                  ? const CustomCircularProgress()
                                  : Text(
                                      t.login,
                                    ),
                            ),
                            Gap(
                              70.h,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            orElse: () {
              return SizedBox();
            },
          );
        },
      ),
    );
  }
}
