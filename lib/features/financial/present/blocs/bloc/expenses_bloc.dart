import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/entities/meta_entity.dart';
import '../../../../../../core/networking/api_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../domain/entities/create_expense_entity.dart';
import '../../../domain/entities/expenses_res_entity.dart';
import '../../../domain/usecases/financial_use_cases.dart';
part 'expenses_bloc.freezed.dart';
part 'expenses_event.dart';
part 'expenses_state.dart';

@singleton
class ExpensesBloc extends Bloc<ExpensesEvent, ExpensesState> {
  final FinancialUseCases financialUseCases;
  ExpensesBloc({required this.financialUseCases})
    : super(const ExpensesState.initial()) {
    on<ExpensesEvent>((event, emit) async {
      await event.when(
        get: (page) async {
          emit(const ExpensesState.loading());
          final result = await financialUseCases.get(page: page);
          await result.when(
            success: (res) async {
              emit(
                ExpensesState.loaded(
                  expenses: res?.data ?? [],
                  meta: const MetaEntity(),
                  createExpenseReqEntity: null,
                  formzSubmissionStatus: FormzSubmissionStatus.initial,
                ),
              );
            },
            failure: (apiErrorModel) async {
              emit(ExpensesState.failure(apiErrorModel: apiErrorModel));
            },
          );
        },
        updateData: (createExpenseReqEntity) async {
          await state.mapOrNull(
            loaded: (state) {
              emitCustomLoaded(
                emit: emit,
                state: state,
                createExpenseReqEntity: createExpenseReqEntity,
                formzSubmissionStatus:
                    (Formz.validate([
                      createExpenseReqEntity.amount ??
                          const GenericFormInput.pure(),
                      createExpenseReqEntity.notes ??
                          const GenericFormInput.pure(),
                    ])
                    ? FormzSubmissionStatus.success
                    : FormzSubmissionStatus.failure),
              );
            },
          );
        },
        create: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emitCustomLoaded(
                emit: emit,
                state: state,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
              );
              final res = await financialUseCases.create(
                createExpenseReqEntity:
                    state.createExpenseReqEntity ?? CreateExpenseReqEntity(),
              );
              await res.when(
                success: (data) {
                  emit(const ExpensesState.success());
                  emitCustomLoaded(
                    emit: emit,
                    state: state,
                    createExpenseReqEntity: state.createExpenseReqEntity!
                        .copyWith(
                          amount: const GenericFormInput.pure(),
                          notes: const GenericFormInput.pure(),
                        ),
                    formzSubmissionStatus: FormzSubmissionStatus.initial,
                  );
                },
                failure: (apiErrorModel) {
                  emit(ExpensesState.failure(apiErrorModel: apiErrorModel));
                  emitCustomLoaded(emit: emit, state: state);
                },
              );
            },
          );
        },
      );
    });
  }
  emitCustomLoaded({
    required Emitter<ExpensesState> emit,
    required _Loaded state,
    List<ExpenseEntity>? expenses,
    MetaEntity? meta,
    CreateExpenseReqEntity? createExpenseReqEntity,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      state.copyWith(
        expenses: expenses ?? state.expenses,
        meta: meta ?? state.meta,
        createExpenseReqEntity:
            createExpenseReqEntity ?? state.createExpenseReqEntity,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            (Formz.validate([
                  state.createExpenseReqEntity?.amount ??
                      const GenericFormInput.pure(),
                  state.createExpenseReqEntity?.notes ??
                      const GenericFormInput.pure(),
                ])
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }
}
