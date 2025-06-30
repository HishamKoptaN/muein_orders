import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mubin_orders/features/docs/domain/entities/docs_res_entity.dart';
import '../../../../../core/networking/api_result.dart';
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

  Future<({double lat, double lng})> getCurrentLocation() {
    return ordersRepo.getCurrentLocation();
  }

  Future<ApiResult<DocEntity?>> createDoc({
    required int orderId,
    required File videoOne,
    required File videoTwo,
    required File imageOne,
    required File imageTwo,
    required String longitude,
    required String latitude,
    required ProgressCallback? onSendProgress,
  }) async {
    return await ordersRepo.createDoc(
      orderId: orderId,
      videoOne: videoOne,
      videoTwo: videoTwo,
      imageOne: imageOne,
      imageTwo: imageTwo,
      longitude: longitude,
      latitude: latitude,
      onSendProgress: onSendProgress,
    );
  }
}
