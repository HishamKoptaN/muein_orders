import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../entities/order_items_res_entity.dart';
import '../repo/order_items_repo.dart';

@singleton
class OrderItemsUseCases {
  final OrderItemsRepo _repo;
  OrderItemsUseCases(this._repo);

  Future<ApiResult<OrderItemsResEntity>> get({
    required int subCategoryId,
  }) async {
    return _repo.get(subCategoryId: subCategoryId);
  }
}
