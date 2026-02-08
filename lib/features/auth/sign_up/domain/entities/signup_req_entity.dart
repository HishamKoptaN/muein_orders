class SignUpReqEntity {
  String name;
  String phone;
  String email;
  String password;
  String fcmToken;
  SignUpReqEntity({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.fcmToken,
  });
}
