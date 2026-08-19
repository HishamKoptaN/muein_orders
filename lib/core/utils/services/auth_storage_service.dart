import 'package:injectable/injectable.dart';
import '../database/shared_pref_helper.dart';
import '../database/shared_pref_keys.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthStorageService {
  Future<void> storeJwtToken(String token) async {
    await SharedPrefHelper.setSecuredString(
      key: SharedPrefKeys.jwtToken,
      value: token,
    );
  }

  static Future<String?> getJwtToken() async {
    return await SharedPrefHelper.getSecuredString(
      key: SharedPrefKeys.jwtToken,
    );
  }
}
