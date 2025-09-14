import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_settings_res_model.freezed.dart';
part 'sign_up_settings_res_model.g.dart';

@freezed
class SignUpSettingsResModel with _$SignUpSettingsResModel {
  const factory SignUpSettingsResModel({
    @JsonKey(name: "countries") List<Country>? countries,
  }) = _SignUpSettingsResModel;
  factory SignUpSettingsResModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpSettingsResModelFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "code") String? code,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}