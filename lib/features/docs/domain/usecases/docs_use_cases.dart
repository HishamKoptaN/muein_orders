import 'package:dio/dio.dart';
import 'package:mubin_orders/features/docs/domain/entities/docs_res_entity.dart';
import '../../../../../core/networking/api_result.dart';
import '../entities/add_doc_req_entity.dart';
import '../repo/docs_repo.dart';
import 'package:injectable/injectable.dart' show LazySingleton;

@LazySingleton()
class DocsUseCase {
  final DocsRepo ordersRepo;
  DocsUseCase({
    required this.ordersRepo,
  });
  Future<ApiResult<DocsResEntity?>> getDocs({required int orderId}) async {
    return await ordersRepo.getDocs(clientId: orderId);
  }
  Future<ApiResult<DocEntity?>> createDoc({
    required AddDocReqEntity addDocReqEntity,
    required ProgressCallback? onSendProgress,
  }) async {
    return await ordersRepo.createDoc(
      addDocReqEntity: addDocReqEntity,
      onSendProgress: onSendProgress,
    );
  }
}
