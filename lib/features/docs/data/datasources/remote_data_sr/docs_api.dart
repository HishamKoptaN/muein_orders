import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show lazySingleton, factoryMethod;
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/api_constants.dart';
import '../../../../profile/data/models/presigned/presigned_url_model.dart';
import '../../models/create_doc_req_model.dart';
import '../../models/docs_res_model.dart';
import '../../models/presigned_doc_url_req_model.dart';

part 'docs_api.g.dart';

@lazySingleton
@RestApi()
abstract class DocsApi {
  @factoryMethod
  factory DocsApi(Dio dio) = _DocsApi;
  //! get
  @GET('/docs/{orderId}')
  Future<List<DocModel>?> get({@Path('orderId') required int orderId});
  //! presignedAvatarUrl
  @POST('/docs/presigned')
  Future<PresignedUrlModel> presigned({
    @Body() required PresignedDocUrlReqModel presignedDocUrlReqModel,
  });
  //! createDoc
  @POST(ApiConstants.docs)
  Future<DocModel> createDoc({@Body() required CreateDocReqModel createDocReq});
}
