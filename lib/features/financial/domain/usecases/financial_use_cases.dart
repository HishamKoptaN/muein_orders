import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import '../entities/create_expense_entity.dart';
import '../entities/expenses_res_entity.dart';
import '../entities/financial_account_entity.dart';
import '../repo/orders_repo.dart';

@singleton
class FinancialUseCases {
  final FinancialRepo financialRepo;
  FinancialUseCases(this.financialRepo);

  Future<ExecuteGuard<FinancialAccountEntity?>> getFinancialAccounts() async {
    return await financialRepo.getFinancialAccounts();
  }

  Future<ExecuteGuard<ExpensesResEntity?>> get({required int page}) async {
    return await financialRepo.get(page: page);
  }

  Future<ExecuteGuard<ExpenseEntity?>> create({
    required CreateExpenseReqEntity createExpenseReqEntity,
  }) async {
    return await financialRepo.create(
      createExpenseReqEntity: createExpenseReqEntity,
    );
  }
}
