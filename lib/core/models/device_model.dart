import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_model.freezed.dart';
part 'device_model.g.dart';

@freezed
abstract class DeviceModel with _$DeviceModel {
  const factory DeviceModel({
    required String model,
    required String os,
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'fcm_token') required String fcmToken,
  }) = _DeviceModel;
  factory DeviceModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceModelFromJson(json);
}
