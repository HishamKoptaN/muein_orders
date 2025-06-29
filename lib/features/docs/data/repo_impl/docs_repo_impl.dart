import 'package:dio/dio.dart';
import 'package:mubin_orders/features/docs/data/mapper/docs_mapper.dart';
import 'package:mubin_orders/features/docs/domain/entities/docs_res_entity.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../core/errors/api_error_handler.dart';
import '../../domain/entities/add_doc_req_entity.dart';
import '../../domain/repo/docs_repo.dart';
import 'dart:async';
import 'package:location/location.dart';

import '../datasources/docs_api.dart';
import 'package:injectable/injectable.dart' show Injectable;

@Injectable(
  as: DocsRepo,
)
class DocsRepoImpl implements DocsRepo {
  final DocsApi postsApi;
  final Location location = Location();
  DocsRepoImpl({
    required this.postsApi,
  });
  @override
  Future<ApiResult<DocsResEntity?>> getDocs({required int clientId}) async {
    try {
      final res = await postsApi.getClientDocs(clientId: clientId);
      final result = res?.toEntity();
      return ApiResult.success(
        data: result,
      );
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
        ),
      );
    }
  }

  @override
  Future<({double lat, double lng})> getCurrentLocation() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) throw Exception('Location service disabled');
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        throw Exception('Location permission not granted');
      }
    }

    final locationData = await location.getLocation();
    return (
      lat: locationData.latitude!,
      lng: locationData.longitude!,
    );
  }

  @override
  Future<ApiResult<DocEntity?>> createDoc({
    required AddDocReqEntity addDocReqEntity,
    required ProgressCallback? onSendProgress,
  }) async {
    try {
      final res = await postsApi.createDoc(
        orderId: addDocReqEntity.orderId ?? 0,
        videoOne: addDocReqEntity.videoOne!,
        videoTwo: addDocReqEntity.videoTwo!,
        imageOne: addDocReqEntity.imageOne!,
        imageTwo: addDocReqEntity.imageTwo!,
        latitude: addDocReqEntity.latitude ?? '0.0',
        longitude: addDocReqEntity.longitude ?? '0.0',
        onSendProgress: onSendProgress,
      );
      final result = res.toEntity();
      return ApiResult.success(
        data: result,
      );
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
        ),
      );
    }
  }
}
