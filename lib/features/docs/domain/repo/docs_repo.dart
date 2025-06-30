import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mubin_orders/features/docs/domain/entities/docs_res_entity.dart';
import '../../../../../core/networking/api_result.dart';

abstract class DocsRepo {
  Future<ApiResult<DocsResEntity?>> getDocs({required int clientId});
  Future<({double lat, double lng})> getCurrentLocation();
  Future<ApiResult<DocEntity?>> createDoc({
    required int orderId,
    required File videoOne,
    required File videoTwo,
    required File imageOne,
    required File imageTwo,
    required String longitude,
    required String latitude,
    required ProgressCallback? onSendProgress,
  });
}
