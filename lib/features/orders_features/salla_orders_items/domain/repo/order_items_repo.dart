import '../../../../../core/networking/api_result.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../entities/salla_order_items_res_entity.dart';

abstract class OrderItemsRepo {
  Stream<SallaOrderItemsResEntity> watch();
  Future<ApiResult<void>> get({
    required int subCategoryId,
    UploadStatus? filter,
  });
}
