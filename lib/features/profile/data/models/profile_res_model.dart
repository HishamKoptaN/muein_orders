import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_res_model.freezed.dart';
part 'profile_res_model.g.dart';

@freezed
abstract class ProfileResModel with _$ProfileResModel {
  const factory ProfileResModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'phone') String? phone,
    String? email,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _ProfileResModel;

  factory ProfileResModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResModelFromJson(json);
}
