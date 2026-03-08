import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../core/errors/handlers/api_error_handler/api_error_handler.dart';
import '../../../../core/errors/api_error_model/api_error_model.dart';
import '../../domain/entities/create_expense_entity.dart';
import '../../domain/entities/expenses_res_entity.dart';
import '../../domain/repo/orders_repo.dart';
import '../datasources/financial_api.dart';
import '../mappers/financial_mapper.dart';

@Singleton(as: FinancialRepo)
class FinancialRepoImpl implements FinancialRepo {
  final FinancialApi financialApi;
  FinancialRepoImpl(this.financialApi);
  @override
  Future<ApiResult<ExpensesResEntity?>> get({required int page}) async {
    try {
      final res = await financialApi.get(page: page);
      return ApiResult.success(data: res.toEntity());
    } catch (error, stackTrace) {
      return const ApiResult.failure(apiErrorModel: ApiErrorModel());
    }
  }

  @override
  Future<ApiResult<ExpenseEntity?>> create({
    required CreateExpenseReqEntity createExpenseReqEntity,
  }) async {
    try {
      final model = createExpenseReqEntity.toModel();
      final res = await financialApi.create(createExpenseModel: model);
      return ApiResult.success(data: res.toEntity());
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }
}
