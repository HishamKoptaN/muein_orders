import 'package:error_handler/error_handler.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../entities/salla_order_items_res_entity.dart';

abstract class OrderItemsRepo {
  Stream<SallaOrderItemsResEntity> watch({UploadStatus? uploadStatus});
  Future<ExecuteGuard<void>> get({
    required int subCategoryId,
    UploadStatus? filter,
  });
}
