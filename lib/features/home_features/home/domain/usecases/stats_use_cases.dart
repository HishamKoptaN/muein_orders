import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import '../entities/order_type_res_entity.dart';
import '../repo/stats_repo.dart';

@lazySingleton
class StatsUseCases {
  final StatsRepo statsRepo;
  StatsUseCases(this.statsRepo);
  Future<ExecuteGuard<List<StatEntity>?>> stats() async {
    return await statsRepo.stats();
  }
}
