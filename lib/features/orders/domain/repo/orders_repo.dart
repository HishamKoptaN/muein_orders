import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../entities/orders_res_entity.dart';

abstract class OrdersRepo {
  Stream<OrdersResEntity> watchOrders({
    required int subCategoryId,
    FileUploadStatus? filter,
  });
  Future<void> loadMore({required int subCategoryId, FileUploadStatus? filter});
}
