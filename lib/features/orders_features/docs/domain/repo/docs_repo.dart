import 'package:error_handler/error_handler.dart';
import '../entities/doc_req_entity.dart';

abstract class DocsRepo {
  Future<ExecuteGuard<void>> updateDoc({required DocReqEntity docReq});
  Future<ExecuteGuard<void>> updateMedia({
    required DocMediaReqEntity docMediaReq,
  });
  Future<ExecuteGuard<void>> startUpload({required int id});
  Future<ExecuteGuard<void>> retryUpload({required int id});
}
