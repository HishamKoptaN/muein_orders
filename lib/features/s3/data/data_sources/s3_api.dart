import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 's3_api.g.dart';

@lazySingleton
@RestApi()
abstract class S3Api {
  @factoryMethod
  factory S3Api(Dio dio) = _S3Api;
}
