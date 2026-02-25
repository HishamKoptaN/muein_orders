import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:formz/formz.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/create_expense_entity.dart';
import '../financial_rep_bloc/financial_bloc.dart';

class CreateExpenseView extends StatefulWidget {
  const CreateExpenseView({super.key});
  static const String routeName = 'create-expense';

  @override
  State<CreateExpenseView> createState() => _CreateExpenseViewState();
}

class _CreateExpenseViewState extends State<CreateExpenseView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      appBar: const CustomAppBar(title: 'تدوين مصروفات'),
      backgroundColor: const Color(0xFF003A46),
      body: BlocConsumer<FinancialBloc, FinancialState>(
        listener: (context, state) async {
          await state.whenOrNull(
            success: () {
              context.showSuccessSnackBar(
                title: 'نجاح',
                message: 'تم اضافة العملية',
              );
            },
            failure: (e) {
              context.showErrorSnackBar(
                title: 'فشل',
                message: e?.message ?? '',
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (_, __, createExpenseReqEntity, formzSubmissionStatus) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomAuthTextFormField(
                      key: const Key('email_field'),
                      initialValue: createExpenseReqEntity?.amount?.value,
                      hintText: 'المبلغ',
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        getIt<FinancialBloc>().add(
                          FinancialEvent.updateData(
                            createExpenseReqEntity:
                                createExpenseReqEntity?.copyWith(
                                  amount: GenericFormzInput.dirty(value),
                                ) ??
                                CreateExpenseReqEntity(
                                  amount: GenericFormzInput.dirty(value),
                                ),
                          ),
                        );
                      },
                    ),
                    CustomAuthTextFormField(
                      key: const Key('n_field'),
                      initialValue: createExpenseReqEntity?.notes?.value,
                      hintText: 'الملاحظات',
                      keyboardType: TextInputType.text,
                      onChanged: (value) {
                        getIt<FinancialBloc>().add(
                          FinancialEvent.updateData(
                            createExpenseReqEntity:
                                createExpenseReqEntity?.copyWith(
                                  notes: GenericFormzInput.dirty(value),
                                ) ??
                                CreateExpenseReqEntity(
                                  notes: GenericFormzInput.dirty(value),
                                ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomBtnWidget(
                      key: const Key('button'),
                      text: 'إضافة',
                      onPressed: () {
                        // getItFinancialBloc>().add(
                        //   FinancialEvent.updateData(
                        //     createExpenseReqEntity:
                        //         createExpenseReqEntity?.copyWith(
                        //           amount: const GenericFormzInput.dirty('75'),
                        //           notes: const GenericFormzInput.dirty('100'),
                        //         ) ??
                        //         CreateExpenseReqEntity(
                        //           amount: const GenericFormzInput.dirty('75'),
                        //           notes: const GenericFormzInput.dirty(
                        //             'مصاريف تنقل',
                        //           ),
                        //         ),
                        //   ),
                        // );
                        if (formzSubmissionStatus?.isSuccess == true) {
                          getIt<FinancialBloc>().add(
                            const FinancialEvent.create(),
                          );
                        }
                      },
                      formzSubmissionStatus: formzSubmissionStatus,
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
