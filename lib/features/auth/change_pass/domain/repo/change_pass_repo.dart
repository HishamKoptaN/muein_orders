import '../../../../../core/networking/api_result.dart';

abstract class ChangePassRepo {
  Future<ApiResult<void>> update({required String password});
}
