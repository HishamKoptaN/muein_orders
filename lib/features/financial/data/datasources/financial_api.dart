import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/constants/api_constants.dart';
import '../models/create_expense_req_model.dart';
import '../models/expenses_res_model.dart';

part 'financial_api.g.dart';

@singleton
@RestApi(baseUrl: AppConfig.apiBaseUrl)
abstract class FinancialApi {
  @factoryMethod
  factory FinancialApi(Dio dio) = _FinancialApi;
  // ! Get orders for a specific package
  @GET(ApiConstants.expenses)
  Future<ExpensesResModel> get({@Query('page') int? page});
  // ! updateClientField
  @POST(ApiConstants.expenses)
  Future<ExpenseModel> create({
    @Body() required CreateExpenseModel createExpenseModel,
  });
}
