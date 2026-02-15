import 'dart:io';

import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_req_entity.freezed.dart';

@freezed
abstract class UpdateProfileReqEntity with _$UpdateProfileReqEntity {
  const factory UpdateProfileReqEntity({
    GenericFormzInput<int>? id,
    GenericFormzInput<File>? avatar,
    String? avatarPath,
    GenericFormzInput<String>? name,
    PhoneNumberInput? phone,
  }) = _UpdateProfileReqEntity;
}
