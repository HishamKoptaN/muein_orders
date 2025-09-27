import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_model.freezed.dart';
part 'update_profile_model.g.dart';

@freezed
class UpdateProfileModel with _$UpdateProfileModel {
  const factory UpdateProfileModel({
    String? name,
    String? phone,
  }) = _UpdateProfileModel;

  factory UpdateProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileModelFromJson(json);

  const UpdateProfileModel._();
}
