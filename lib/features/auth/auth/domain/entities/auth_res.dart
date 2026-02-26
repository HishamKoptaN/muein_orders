import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_res.freezed.dart';
part 'auth_res.g.dart';

@freezed
abstract class AuthRes with _$AuthRes {
  const factory AuthRes({required String token}) = _AuthRes;

  factory AuthRes.fromJson(Map<String, dynamic> json) =>
      _$AuthResFromJson(json);
}
