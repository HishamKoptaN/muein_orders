import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/stream_utils.dart';
import '../entities/salla_order_items_res_entity.dart';
import '../repo/order_items_repo.dart';

@singleton
class OrderItemsUseCases {
  final OrderItemsRepo _repo;
  OrderItemsUseCases(this._repo);

  Stream<SallaOrderItemsResEntity> watch() {
    return createThrottledStream(
      _repo.watch().distinct(),
      throttleDuration: const Duration(seconds: 1),
    );
  }

  Future<ApiResult<void>> get({required int subCategoryId}) async {
    return _repo.get(subCategoryId: subCategoryId);
  }
}
