import 'package:injectable/injectable.dart';

import '../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/order_type_res_entity.dart';
import '../../domain/repo/stats_repo.dart';
import '../datasources/stats_api.dart';
import '../mappers/order_type_mapper.dart';

@LazySingleton(as: StatsRepo)
class StatsRepoImpl implements StatsRepo {
  final StatsApi _remote;
  const StatsRepoImpl(this._remote);

  @override
  Future<ApiResult<List<StatEntity>>> stats() async {
    try {
      final model = await _remote.stats();
      return ApiResult.success(data: model.map((e) => e.toEntity()).toList());
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(error: e.toString()),
      );
    }
  }
}
