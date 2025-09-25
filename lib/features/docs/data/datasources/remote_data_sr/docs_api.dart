import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show injectable, factoryMethod;
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/api_constants.dart';
import '../../models/docs_res_model.dart';

part 'docs_api.g.dart';

@injectable
@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class DocsApi {
  @factoryMethod
  factory DocsApi(
    Dio dio,
  ) = _DocsApi;
  @GET('/docs/{orderId}')
  Future<DocsResModel?> getClientDocs({
    @Path('orderId') required int orderId,
  });

  //! createDoc
  @POST(
    ApiConstants.docs,
  )
  @MultiPart()
  Future<Doc> createDoc({
    @Part(name: 'order_id') required int orderId,
    @Part(name: 'video_one') File? videoOne,
    @Part(name: 'video_two') File? videoTwo,
    @Part(name: 'image_one') File? imageOne,
    @Part(name: 'image_two') File? imageTwo,
    @Part(name: 'longitude') required String longitude,
    @Part(name: 'latitude') required String latitude,
    @Part(name: 'shipping_costs') required String shippingCosts,
    @SendProgress() required ProgressCallback? onSendProgress,
  });
}
