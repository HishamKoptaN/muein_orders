import 'package:injectable/injectable.dart';

import '../../../../core/networking/api_result.dart';
import '../entities/profile_entity.dart';
import '../repo/profile_repo.dart';

@injectable
class GetProfileUseCase {
  final ProfileRepo _profileRepo;

  const GetProfileUseCase(this._profileRepo);

  Future<ApiResult<ProfileEntity>> call() async {
    return await _profileRepo.getProfile();
  }
}
