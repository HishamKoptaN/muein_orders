import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import 'package:error_handler/error_handler.dart';
import '../../domain/entities/order_type_res_entity.dart';
import '../../domain/repo/stats_repo.dart';
import '../datasources/stats_api.dart';
import '../mappers/order_type_mapper.dart';

@LazySingleton(as: StatsRepo)
class StatsRepoImpl implements StatsRepo {
  final StatsApi _remote;
  const StatsRepoImpl(this._remote);

  @override
  Future<ExecuteGuard<List<StatEntity>>> stats() async {
    try {
      final model = await _remote.stats();
      return ExecuteGuard.success(
        data: model.map((e) {
          return e.toEntity();
        }).toList(),
      );
    } catch (e) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }
}
