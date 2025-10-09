import 'package:injectable/injectable.dart';

import '../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/order_type_res_entity.dart';
import '../../domain/repo/home_repo.dart';
import '../datasources/home_api.dart';
import '../mappers/order_type_mapper.dart';

@LazySingleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  final HomeApi _remote;
  const HomeRepoImpl(this._remote);

  @override
  Future<ApiResult<List<OrderTypeResEntity>>> getSummary() async {
    try {
      final model = await _remote.getSummary();
      return ApiResult.success(data: model.map((e) => e.toEntity()).toList());
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(error: e.toString()),
      );
    }
  }
}
