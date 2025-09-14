import 'package:injectable/injectable.dart';
import 'package:mubin_orders/core/networking/api_result.dart';
import '../entities/home_summary.dart';
import '../repo/home_repo.dart';

@injectable
class GetHomeSummary {
  final HomeRepo _repo;
  const GetHomeSummary(this._repo);

  Future<ApiResult<HomeSummary>> call() => _repo.getHomeSummary();
}
