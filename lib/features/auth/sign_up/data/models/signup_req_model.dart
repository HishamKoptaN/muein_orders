class SignUpReqModel {
  final String firstName;
  final String lastName;
  final String phone;
  final String email;
  final String password;
  final int countryId;

  SignUpReqModel({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.password,
    required this.countryId,
  });

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'phone': phone,
      'email': email,
      'password': password,
      'country_id': countryId,
      'password_confirmation': password,
    };
  }
}
