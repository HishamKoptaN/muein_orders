part of 'financial_bloc.dart';

@freezed
abstract class FinancialEvent with _$FinancialEvent {
  const factory FinancialEvent.get({required int page}) = _Get;
  const factory FinancialEvent.updateData({
    required CreateExpenseReqEntity createExpenseReqEntity,
  }) = _UpdateData;
  const factory FinancialEvent.create() = _Create;
}
