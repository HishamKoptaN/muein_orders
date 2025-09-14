import 'package:mubin_orders/core/networking/api_result.dart';
import '../entities/home_summary.dart';

abstract class HomeRepo {
  Future<ApiResult<HomeSummary>> getHomeSummary();
}
