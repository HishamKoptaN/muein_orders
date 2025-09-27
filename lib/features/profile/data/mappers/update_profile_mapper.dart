import '../../domain/entities/update_profile_req_entity.dart';
import '../models/update_profile_model.dart';

extension UpdateProfileModelMapper on UpdateProfileModel {
  UpdateProfileReqEntity toEntity() => UpdateProfileReqEntity(
        name: name,
        phone: phone,
      );
}
