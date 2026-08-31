import 'package:error_handler/error_handler.dart';
import '../entities/create_expense_entity.dart';
import '../entities/expenses_res_entity.dart';
import '../entities/financial_account_entity.dart';

abstract class FinancialRepo {
  Future<ExecuteGuard<FinancialAccountEntity?>> getFinancialAccounts();
  Future<ExecuteGuard<ExpensesResEntity?>> get({required int page});
  Future<ExecuteGuard<ExpenseEntity?>> create({
    required CreateExpenseReqEntity createExpenseReqEntity,
  });
}
