import '../../domain/entities/presigned_url_entity.dart';
import '../../domain/entities/update_profile_req_entity.dart';
import '../models/presigned/presigned_url_model.dart';
import '../models/update_profile_req_model.dart';

extension UpdateProfileReqX on UpdateProfileReqEntity {
  UpdateProfileReqModel toModel() {
    return UpdateProfileReqModel(
      avatar: avatarPath,
      name: name?.value,
      phone: phone?.value,
    );
  }

  bool get isBlank {
    return name == null && phone == null && avatar == null;
  }
}

extension PresignedUrlX on PresignedUrlModel {
  PresignedUrlEntity toEntity() {
    return PresignedUrlEntity(
      uploadUrl: uploadUrl,
      filePath: filePath,
      contentType: contentType,
    );
  }
}
