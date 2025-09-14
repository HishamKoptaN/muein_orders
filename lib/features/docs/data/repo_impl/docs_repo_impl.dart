import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mubin_orders/features/docs/data/mapper/docs_mapper.dart';
import 'package:mubin_orders/features/docs/domain/entities/docs_res_entity.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/repo/docs_repo.dart';
import 'dart:async';
import 'package:location/location.dart';

import '../datasources/docs_api.dart';
import 'package:injectable/injectable.dart' show Injectable;
import 'package:mubin_orders/core/error/api_error_handler.dart';

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
    required int orderId,
    required File videoOne,
    required File videoTwo,
    required File imageOne,
    required File imageTwo,
    required String longitude,
    required String latitude,
    required ProgressCallback? onSendProgress,
  }) async {
    try {
      final res = await postsApi.createDoc(
        orderId: orderId,
        videoOne: videoOne,
        videoTwo: videoTwo,
        imageOne: imageOne,
        imageTwo: imageTwo,
        longitude: longitude,
        latitude: latitude,
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
