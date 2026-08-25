import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
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
    return CustomScaffold(
      backgroundColor: context.colorScheme.primary,
      appBar: AppBar(
        title: Text('تغيير كلمة المرور', style: context.textTheme.titleLarge),
        backgroundColor: context.colorScheme.onPrimary,
        foregroundColor: context.colorScheme.primary,
        iconTheme: IconThemeData(color: context.colorScheme.primary),
      ),
      body: BlocConsumer<ChangePassBloc, ChangePassState>(
        bloc: getIt<ChangePassBloc>(),
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
          return state.maybeMap(
            loaded: (state) {
              return Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                mainAxisSize: .max,
                spacing: 20.h,
                children: [
                  CustomAuthTextFormField(
                    initialValue: state.changePasswordReq.password?.value,
                    hintText: 'كلمة المرور الجديدة',
                    obscureText: state.changePasswordReq.obscurePassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        getIt<ChangePassBloc>().add(
                          ChangePassEvent.dataChanged(
                            changePasswordReq: state.changePasswordReq.copyWith(
                              obscurePassword:
                                  !state.changePasswordReq.obscurePassword,
                            ),
                          ),
                        );
                      },
                      icon: Icon(
                        state.changePasswordReq.obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    onChanged: (v) {
                      getIt<ChangePassBloc>().add(
                        ChangePassEvent.dataChanged(
                          changePasswordReq: state.changePasswordReq.copyWith(
                            password: .dirty(v),
                          ),
                        ),
                      );
                    },
                  ),
                  CustomAuthTextFormField(
                    initialValue:
                        state.changePasswordReq.confirmPassword?.value,
                    hintText: 'تأكيد كلمة المرور الجديدة',
                    obscureText: state.changePasswordReq.obscurePassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        getIt<ChangePassBloc>().add(
                          ChangePassEvent.dataChanged(
                            changePasswordReq: state.changePasswordReq.copyWith(
                              obscurePassword:
                                  !state.changePasswordReq.obscurePassword,
                            ),
                          ),
                        );
                      },
                      icon: Icon(
                        state.changePasswordReq.obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    onChanged: (v) {
                      getIt<ChangePassBloc>().add(
                        ChangePassEvent.dataChanged(
                          changePasswordReq: state.changePasswordReq.copyWith(
                            confirmPassword: .dirty(v),
                          ),
                        ),
                      );
                    },
                  ),
                  Gap(10.h),
                  FilledButton(
                    onPressed: state.formzSubmissionStatus.isSuccess
                        ? () {
                            getIt<ChangePassBloc>().add(
                              const ChangePassEvent.update(),
                            );
                          }
                        : null,
                    child: state.formzSubmissionStatus.isInProgress
                        ? const CustomCircularProgress()
                        : const Text('تغيير'),
                  ),
                ],
              );
            },
            orElse: () {
              return const CircularProgressIndicator();
            },
          );
        },
      ),
    );
  }
}
