import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_settings_res_model.freezed.dart';
part 'sign_up_settings_res_model.g.dart';

@freezed
abstract class SignUpSettingsResModel with _$SignUpSettingsResModel {
  const factory SignUpSettingsResModel({
    @JsonKey(name: "countries") List<Country>? countries,
    @JsonKey(name: "cities") List<City>? cities,
    @JsonKey(name: "opportunity_lookings")
    List<OpportunityLooking>? opportunityLookings,
  }) = _SignUpSettingsResModel;

  factory SignUpSettingsResModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpSettingsResModelFromJson(json);
}

@freezed
abstract class City with _$City {
  const factory City({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "country_id") int? countryId,
  }) = _City;
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@freezed
abstract class Country with _$Country {
  const factory Country({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "code") String? code,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
abstract class OpportunityLooking with _$OpportunityLooking {
  const factory OpportunityLooking({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "image") String? image,
  }) = _OpportunityLooking;

  factory OpportunityLooking.fromJson(Map<String, dynamic> json) =>
      _$OpportunityLookingFromJson(json);
}
