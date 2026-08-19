part of 'expenses_bloc.dart';

@freezed
class ExpensesState with _$ExpensesState {
  const factory ExpensesState.initial() = _Initial;
  const factory ExpensesState.loaded({
    required List<ExpenseEntity>? expenses,
    required MetaEntity? meta,
    required CreateExpenseReqEntity? createExpenseReqEntity,
    required FormzSubmissionStatus? formzSubmissionStatus,
    bool? loading,
  }) = _Loaded;
  const factory ExpensesState.loading() = _Loading;
  const factory ExpensesState.success() = _Success;
  const factory ExpensesState.failure({required ErrorInfo apiErrorModel}) =
      _Failure;
}
