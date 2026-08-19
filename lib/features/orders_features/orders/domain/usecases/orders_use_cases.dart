import 'package:injectable/injectable.dart';

import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../entities/orders_res_entity.dart';
import '../repo/orders_repo.dart';

@singleton
class OrdersUseCases {
  final OrdersRepo _repo;
  OrdersUseCases(this._repo);
  // Stream<OrdersResEntity> watch({
  //   required int subCategoryId,
  //   FileUploadStatus? filter,
  // }) {
  //   return _repo.watchOrders(subCategoryId: subCategoryId, filter: filter);
  // }

  // Future<void> loadMore({
  //   required int subCategoryId,
  //   FileUploadStatus? filter,
  // }) {
  //   return _repo.loadMore(subCategoryId: subCategoryId, filter: filter);
  // }
}
