import 'package:injectable/injectable.dart';
import '../database/shared_pref_helper.dart';
import '../database/shared_pref_keys.dart';
import '../di/dependency_injection.dart';
import '../di/dio/api_module.dart';

@Injectable()
class AuthStorageService {
  Future<void> storeJwtToken(String token) async {
    await SharedPrefHelper.setSecuredString(
      key: SharedPrefKeys.jwtToken,
      value: token,
    );
    await getIt<AuthInterceptor>().updateToken();
  }

  Future<void> updateAuthToken() async {
    await getIt<AuthInterceptor>().updateToken();
  }
}
