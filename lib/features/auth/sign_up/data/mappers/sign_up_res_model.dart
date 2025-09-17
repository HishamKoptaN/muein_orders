import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/sign_up_res_entity.dart';

part 'sign_up_res_model.freezed.dart';
part 'sign_up_res_model.g.dart';

@freezed
abstract class SignUpResModel with _$SignUpResModel {
  const factory SignUpResModel({
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'role') String? role,
  }) = _SignUpResModel;
  factory SignUpResModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResModelFromJson(json);
}

extension SignUpResModelX on SignUpResModel {
  SignUpResEntity toEntity() => SignUpResEntity(
      token: token,
      role: role,
    );
}

extension SignUpResEntityX on SignUpResEntity {
  SignUpResModel toModel() => SignUpResModel(
      token: token,
      role: role,
    );
}
