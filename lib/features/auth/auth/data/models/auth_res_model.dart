import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_res_model.freezed.dart';
part 'auth_res_model.g.dart';

@freezed
abstract class AuthResModel with _$AuthResModel {
  const factory AuthResModel({@JsonKey(name: 'token') required String token}) =
      _AuthResModel;

  factory AuthResModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResModelFromJson(json);
}
