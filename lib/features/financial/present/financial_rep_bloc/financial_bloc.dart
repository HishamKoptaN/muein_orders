import 'package:bloc/bloc.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/meta_entity.dart';
import '../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/create_expense_entity.dart';
import '../../domain/entities/expenses_res_entity.dart';
import '../../domain/usecases/financial_use_cases.dart';

part 'financial_bloc.freezed.dart';
part 'financial_event.dart';
part 'financial_state.dart';

@singleton
class FinancialBloc extends Bloc<FinancialEvent, FinancialState> {
  final FinancialUseCases _reportsUseCases;
  FinancialBloc({required FinancialUseCases reportsUseCases})
    : _reportsUseCases = reportsUseCases,
      super(
        const FinancialState.loaded(
          expenses: [],
          meta: null,
          createExpenseReqEntity: null,
          formzSubmissionStatus: FormzSubmissionStatus.initial,
        ),
      ) {
    on<FinancialEvent>((event, emit) async {
      await event.when(
        get: (page) async {
          await state.mapOrNull(
            loaded: (state) async {
              emit(const FinancialState.loading());
              final res = await _reportsUseCases.get(page: page);
              await res.when(
                success: (data) {
                  emitCustomLoaded(emit: emit, state: state);
                },
                failure: (apiErrorModel) {
                  emit(FinancialState.failure(apiErrorModel: apiErrorModel));
                  emitCustomLoaded(emit: emit, state: state);
                },
              );
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
                          const GenericFormzInput<String>.pure(),
                      createExpenseReqEntity.notes ??
                          const GenericFormzInput<String>.pure(),
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
              final res = await _reportsUseCases.create(
                createExpenseReqEntity:
                    state.createExpenseReqEntity ?? CreateExpenseReqEntity(),
              );
              await res.when(
                success: (data) {
                  emit(const FinancialState.success());
                  emitCustomLoaded(
                    emit: emit,
                    state: state,
                    createExpenseReqEntity: state.createExpenseReqEntity!
                        .copyWith(
                          amount: const GenericFormzInput.pure(),
                          notes: const GenericFormzInput.pure(),
                        ),
                    formzSubmissionStatus: FormzSubmissionStatus.initial,
                  );
                },
                failure: (apiErrorModel) {
                  emit(FinancialState.failure(apiErrorModel: apiErrorModel));
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
    required Emitter<FinancialState> emit,
    required _Loaded state,
    CreateExpenseReqEntity? createExpenseReqEntity,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      state.copyWith(
        expenses: state.expenses,
        meta: state.meta,
        createExpenseReqEntity:
            createExpenseReqEntity ?? state.createExpenseReqEntity,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            (Formz.validate([
                  state.createExpenseReqEntity?.amount ??
                      const GenericFormzInput<String>.pure(),
                  state.createExpenseReqEntity?.notes ??
                      const GenericFormzInput<String>.pure(),
                ])
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }
}
