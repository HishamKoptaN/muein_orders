import '../../domain/entities/update_profile_req_entity.dart';
import '../models/update_profile_req_model.dart';

extension UpdateProfileReqX on UpdateProfileReqEntity {
  UpdateProfileReqModel toModel() {
    return UpdateProfileReqModel(
      image: image?.value,
      name: name?.value,
      phone: phone?.value,
    );
  }
}
