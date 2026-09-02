import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../../core/widgets/translated_text.dart';
import '../bloc/forgot_pass_bloc.dart';

class ForgotPassView extends StatelessWidget {
  static const String routeName = 'forgot-password';
  const ForgotPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: context.colorScheme.primary,
      appBar: const CustomAppBar(title: 'نسيت كلمة المرور'),
      body: BlocConsumer<ForgotPassBloc, ForgotPassState>(
        bloc: getIt<ForgotPassBloc>(),
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              context.showSuccessSnackBar(
                title: 'نجاح',
                message:
                    'تم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني',
              );
            },
            failure: (error) {
              context.showErrorSnackBar(title: 'خطأ', message: error);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (email, formzSubmissionStatus) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  mainAxisSize: .min,
                  children: [
                    SizedBox(height: 130.h),
                    Image.asset('assets/logos/logo_solid.png'),
                    SizedBox(height: 50.h),
                    CustomAuthTextFormField(
                      initialValue: email.value,
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'البريد الإلكتروني',
                      onChanged: (value) {
                        getIt<ForgotPassBloc>().add(
                          ForgotPassEvent.dataChanged(
                            email: EmailFormInput.dirty(value),
                          ),
                        );
                      },
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'البريد الإلكتروني مطلوب';
                        }
                        if (!val.contains('@')) {
                          return 'البريد الإلكتروني غير صحيح';
                        }
                        return null;
                      },
                    ),
                    Row(
                      children: [
                        TrText(
                          '*',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.r,
                            fontWeight: .bold,
                          ),
                        ),
                        TrText(
                          'سيتم إرسال رابط لإعادة تعيين كلمة المرور إلى بريدك الإلكتروني',
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: context.colorScheme.onPrimary,
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    FilledButton(
                      onPressed: formzSubmissionStatus.isSuccess
                          ? () {
                              getIt<ForgotPassBloc>().add(
                                const .sendPassResetEmail(),
                              );
                            }
                          : null,
                      child: formzSubmissionStatus.isInProgress
                          ? const CustomCircularProgress()
                          : const TrText('إرسال'),
                    ),
                  ],
                ),
              );
            },
            orElse: () {
              return const Center(child: CircularProgressIndicator());
            },
          );
        },
      ),
    );
  }
}
