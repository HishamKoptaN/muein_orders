import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_req_entity.freezed.dart';

@freezed
abstract class UpdateProfileReqEntity with _$UpdateProfileReqEntity {
  const factory UpdateProfileReqEntity({
    GenericFormInput? id,
    XFileFormInput? avatar,
    String? avatarPath,
    GenericFormInput? name,
    PhoneNumberFormInput? phone,
  }) = _UpdateProfileReqEntity;
}
