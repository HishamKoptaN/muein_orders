import '../../../../../core/networking/api_result.dart';
import '../entities/create_expense_entity.dart';
import '../entities/expenses_res_entity.dart';
import '../entities/financial_account_entity.dart';

abstract class FinancialRepo {
  Future<ApiResult<FinancialAccountEntity?>> getFinancialAccounts();
  Future<ApiResult<ExpensesResEntity?>> get({required int page});
  Future<ApiResult<ExpenseEntity?>> create({
    required CreateExpenseReqEntity createExpenseReqEntity,
  });
}
