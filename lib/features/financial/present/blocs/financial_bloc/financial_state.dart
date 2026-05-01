part of 'financial_bloc.dart';

@freezed
abstract class FinancialState with _$FinancialState {
  const factory FinancialState.initial() = _Initial;
  const factory FinancialState.loading() = _Loading;
  const factory FinancialState.success() = _Success;
  const factory FinancialState.loaded({
    required FinancialAccountEntity? financialAccount,
  }) = _Loaded;
  const factory FinancialState.failure({ApiErrorModel? apiErrorModel}) =
      _Failure;
}
