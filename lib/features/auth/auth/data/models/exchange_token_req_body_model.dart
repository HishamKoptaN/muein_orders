import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/models/device_model.dart';

part 'exchange_token_req_body_model.freezed.dart';
part 'exchange_token_req_body_model.g.dart';

@freezed
abstract class ExchangeTokenReqBodyModel with _$ExchangeTokenReqBodyModel {
  const factory ExchangeTokenReqBodyModel({
    @JsonKey(name: 'id_token') required String idToken,
    @JsonKey(name: 'fcm_token') String? fcmToken,
    DeviceModel? device,
  }) = _ExchangeTokenReqBodyModel;
  factory ExchangeTokenReqBodyModel.fromJson(Map<String, dynamic> json) =>
      _$ExchangeTokenReqBodyModelFromJson(json);
}
