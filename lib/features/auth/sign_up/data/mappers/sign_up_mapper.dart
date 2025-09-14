import '../../domain/entities/sign_up_res_entity.dart';
import '../../domain/entities/signup_req_entity.dart';
import '../models/signup_req_model.dart';
import 'sign_up_res_model.dart';

extension SignUpReqMapper on SignUpReqEntity {
  SignUpReqModel toModel() => SignUpReqModel(
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        email: email,
        password: password,
        countryId: countryId ?? 0, // Provide default value for nullable int
      );
}

extension SignUpResMapper on SignUpResModel {
  SignUpResEntity toEntity() => SignUpResEntity(
      // Map fields from model to entity
      // Example:
      // id: id,
      // token: token,
      // ... other fields
      );
}
