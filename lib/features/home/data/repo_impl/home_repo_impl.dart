import 'package:injectable/injectable.dart';
import 'package:mubin_orders/core/networking/api_result.dart';
import '../../../../core/error/api_error_model.dart';
import '../../domain/entities/home_summary.dart';
import '../../domain/repo/home_repo.dart';
import '../datasources/home_remote_datasource.dart';

@LazySingleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource _remote;
  const HomeRepoImpl(this._remote);

  @override
  Future<ApiResult<HomeSummary>> getHomeSummary() async {
    try {
      final model = await _remote.fetchHomeSummary();
      return ApiResult.success(data: model.toEntity());
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(error: e.toString()),
      );
    }
  }
}
