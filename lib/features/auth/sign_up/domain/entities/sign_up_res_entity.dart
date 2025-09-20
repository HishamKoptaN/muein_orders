import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_res_entity.freezed.dart';
part 'sign_up_res_entity.g.dart';

@freezed
class SignUpResEntity with _$SignUpResEntity {
  const factory SignUpResEntity({
    required String token,
    @Default('user') String role,
  }) = _SignUpResEntity;

  factory SignUpResEntity.fromJson(Map<String, dynamic> json) =>
      _$SignUpResEntityFromJson(json);
}
