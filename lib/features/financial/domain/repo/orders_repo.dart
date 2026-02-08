import '../../../../../core/networking/api_result.dart';
import '../entities/create_expense_entity.dart';
import '../entities/expenses_res_entity.dart';

abstract class FinancialRepo {
  Future<ApiResult<ExpensesResEntity?>> get({required int page});
  Future<ApiResult<ExpenseEntity?>> create({
    required CreateExpenseReqEntity createExpenseReqEntity,
  });
}
