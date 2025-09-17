import 'package:injectable/injectable.dart';

import '../../../../../core/error/api_error_handler.dart';
import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/repo/main_repo.dart';
import '../datasources/main_api.dart';

@Injectable(as: MainRepo)
class MainRepoImpl implements MainRepo {
  final MainApi mainApi;

  MainRepoImpl({required this.mainApi});

  @override
  Future<ApiResult<UserData>> check() async {
    try {
      final response = await mainApi.check();
      return ApiResult.success(data: response);
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }

  @override
  Future<ApiResult<void>> signOut() async {
    // Implement sign out logic here
    // This is a placeholder implementation
    try {
      // Call your sign out API or clear local storage here
      return const ApiResult.success(data: null);
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }
}
