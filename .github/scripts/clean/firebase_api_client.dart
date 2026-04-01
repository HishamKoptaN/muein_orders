import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'firebase_models.dart';

part 'firebase_api_client.g.dart';

@RestApi(baseUrl: "https://firebaseappdistribution.googleapis.com/v1")
abstract class FirebaseApiClient {
  factory FirebaseApiClient(Dio dio, {String baseUrl}) = _FirebaseApiClient;
  @GET("/projects/{projectNumber}/apps/{appId}/releases")
  Future<ReleaseListResponse> getReleases(
    @Path("projectNumber") String projectNumber,
    @Path("appId") String appId,
  );
  @POST("/projects/{projectNumber}/apps/{appId}/releases:batchDelete")
  Future<void> batchDeleteReleases(
    @Path("projectNumber") String projectNumber,
    @Path("appId") String appId,
    @Body() Map<String, List<String>> body,
  );
}
