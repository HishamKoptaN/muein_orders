import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_res_model.freezed.dart';
part 'sign_up_res_model.g.dart';

@freezed
abstract class SignUpResModel with _$SignUpResModel {
  const factory SignUpResModel({@JsonKey(name: 'token') String? token}) =
      _SignUpResModel;

  factory SignUpResModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResModelFromJson(json);
}
