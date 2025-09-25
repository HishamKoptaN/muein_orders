import '../../domain/entities/profile_entity.dart';
import 'profile_model.dart';

extension ProfileModelX on ProfileModel {
  ProfileEntity toEntity() {
    return ProfileEntity(
      id: id,
      name: name,
      email: email,
      phone: phone,
      avatar: avatar,
      address: address,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
