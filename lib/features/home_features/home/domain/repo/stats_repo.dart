import 'package:error_handler/error_handler.dart';
import '../entities/order_type_res_entity.dart';

abstract class StatsRepo {
  Future<ExecuteGuard<List<StatEntity>>> stats();
}
