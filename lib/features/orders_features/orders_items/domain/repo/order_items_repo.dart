import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../../core/networking/api_result.dart';
import '../entities/order_items_res_entity.dart';

abstract class OrderItemsRepo {
  Future<ApiResult<OrderItemsResEntity>> get({required int subCategoryId});
}
