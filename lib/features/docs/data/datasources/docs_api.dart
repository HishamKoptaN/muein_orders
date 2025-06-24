import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/docs_res_model.dart';
part 'docs_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class DocsApi {
  factory DocsApi(
    Dio dio, {
    String? baseUrl,
  }) = _DocsApi;
  @GET('/docs/{clientId}')
  Future<DocsResModel?> getClientDocs({
    @Path("clientId") required int clientId,
  });

  //! createDoc
  @POST(
    ApiConstants.docs,
  )
  @MultiPart()
  Future<Doc> createDoc({
    @Part(name: 'order_id') required int orderId,
    @Part(name: 'video_one') required File videoOne,
    @Part(name: 'video_two') required File videoTwo,
    @Part(name: 'image_one') required File imageOne,
    @Part(name: 'image_two') required File imageTwo,
    @Part(name: 'longitude') required String longitude,
    @Part(name: 'latitude') required String latitude,
    @SendProgress() required ProgressCallback? onSendProgress,
  });
}
