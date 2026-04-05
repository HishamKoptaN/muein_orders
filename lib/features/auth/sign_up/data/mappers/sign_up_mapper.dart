import '../../domain/entities/sign_up_res_entity.dart';
import '../../domain/entities/signup_req_entity.dart';
import '../models/sign_up_req_model.dart';
import '../models/sign_up_res_model.dart';

extension SignUpReqMapper on SignUpReqEntity {
  SignUpReqModel toModel({required String idToken}) => SignUpReqModel(
    name: name,
    phone: phone,
    idToken: idToken,
    fcmToken: '',
    deviceType: 'android',
  );
}

extension SignUpResMapper on SignUpResModel {
  SignUpResEntity toEntity() => SignUpResEntity(token: token!);
}
