import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_res_model.freezed.dart';
part 'token_res_model.g.dart';

@freezed
abstract class TokenResModel with _$TokenResModel {
  const factory TokenResModel({
    required String token,
  }) = _TokenResModel;

  factory TokenResModel.fromJson(Map<String, dynamic> json) =>
      _$TokenResModelFromJson(json);
}
