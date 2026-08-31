import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import '../../domain/entities/create_expense_entity.dart';
import '../../domain/entities/expenses_res_entity.dart';
import '../../domain/entities/financial_account_entity.dart';
import '../../domain/repo/orders_repo.dart';
import '../datasources/financial_api.dart';
import '../mappers/financial_mapper.dart';

@Singleton(as: FinancialRepo)
class FinancialRepoImpl implements FinancialRepo {
  final FinancialApi financialApi;
  FinancialRepoImpl(this.financialApi);

  @override
  Future<ExecuteGuard<FinancialAccountEntity?>> getFinancialAccounts() async {
    try {
      final res = await financialApi.getFinancialAccount();
      if (res.isNotEmpty) {
        return ExecuteGuard.success(data: res.first.toEntity());
      }
      return const ExecuteGuard.success(data: null);
    } catch (error) {
      return const ExecuteGuard.failure(errorInfo: ErrorInfo());
    }
  }

  @override
  Future<ExecuteGuard<ExpensesResEntity?>> get({required int page}) async {
    try {
      final res = await financialApi.get(page: page);
      return ExecuteGuard.success(data: res.toEntity());
    } catch (error, stackTrace) {
      return const ExecuteGuard.failure(errorInfo: ErrorInfo());
    }
  }

  @override
  Future<ExecuteGuard<ExpenseEntity?>> create({
    required CreateExpenseReqEntity createExpenseReqEntity,
  }) async {
    try {
      final model = createExpenseReqEntity.toModel();
      final res = await financialApi.create(createExpenseModel: model);
      return ExecuteGuard.success(data: res.toEntity());
    } catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
