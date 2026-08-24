import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show lazySingleton, factoryMethod;
import 'package:retrofit/retrofit.dart';
import '../../../../../../core/constants/api_constants.dart';
import '../../../../../profile/data/models/presigned/presigned_url_model.dart';
import '../../models/doc_req_model.dart';
import '../../models/presigned_doc_url_req_model.dart';
part 'docs_api.g.dart';

@lazySingleton
@RestApi()
abstract class DocsApi {
  @factoryMethod
  factory DocsApi(Dio dio) = _DocsApi;
  //! presignedAvatarUrl
  @POST('/media/presigned')
  Future<PresignedUrlModel> presigned({
    @Body() required PresignedDocUrlReqModel presignedDocUrlReqModel,
  });
  //! createDoc
  @PATCH('${ApiConstants.docs}/{id}')
  Future<void> updateDoc({
    @Path('id') required int id,
    @Body() required DocReqModel docReq,
  });
  //! docMedia
  @PATCH('${ApiConstants.media}/{id}/')
  Future<void> updateMedia({
    @Path('id') required int id,
    @Body() required DocMediaReqModel docMediaReq,
  });
}
