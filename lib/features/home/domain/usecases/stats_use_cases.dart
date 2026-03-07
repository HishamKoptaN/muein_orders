import 'package:injectable/injectable.dart';

import '../../../../core/networking/api_result.dart';
import '../entities/order_type_res_entity.dart';
import '../repo/stats_repo.dart';

@singleton
class StatsUseCases {
  final StatsRepo statsRepo;
  StatsUseCases(this.statsRepo);
  Future<ApiResult<List<StatEntity>?>> stats() async {
    return await statsRepo.stats();
  }
}
