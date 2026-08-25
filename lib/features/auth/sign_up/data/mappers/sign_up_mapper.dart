import '../../domain/entities/sign_up_req_entity.dart';
import '../models/sign_up_req_model.dart';

extension SignUpReqMapper on SignUpReqEntity {
  SignUpReqModel toModel({required String idToken}) {
    return SignUpReqModel(name: name?.value, phone: phone?.value);
  }
}
