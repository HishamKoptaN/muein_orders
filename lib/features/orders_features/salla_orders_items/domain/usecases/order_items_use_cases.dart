import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import '../../../../../core/utils/stream_utils.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../entities/salla_order_items_res_entity.dart';
import '../repo/order_items_repo.dart';

@singleton
class OrderItemsUseCases {
  final OrderItemsRepo _repo;
  OrderItemsUseCases(this._repo);

  Stream<SallaOrderItemsResEntity> watch({UploadStatus? uploadStatus}) {
    return createThrottledStream(
      _repo.watch(uploadStatus: uploadStatus).distinct(),
      throttleDuration: const Duration(seconds: 1),
    );
  }

  Future<ExecuteGuard<void>> get({required int subCategoryId}) async {
    return _repo.get(subCategoryId: subCategoryId);
  }
}
