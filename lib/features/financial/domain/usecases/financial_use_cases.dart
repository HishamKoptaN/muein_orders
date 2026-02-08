import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../entities/create_expense_entity.dart';
import '../entities/expenses_res_entity.dart';
import '../repo/orders_repo.dart';

@singleton
class FinancialUseCases {
  final FinancialRepo financialRepo;
  FinancialUseCases(this.financialRepo);
  Future<ApiResult<ExpensesResEntity?>> get({required int page}) async {
    return await financialRepo.get(page: page);
  }

  Future<ApiResult<ExpenseEntity?>> create({
    required CreateExpenseReqEntity createExpenseReqEntity,
  }) async {
    return await financialRepo.create(
      createExpenseReqEntity: createExpenseReqEntity,
    );
  }
}
