class LoginModelclass {
  String email;
  String password;

  LoginModelclass({required this.email, required this.password});

  Map<String, dynamic> tojson() {
    Map<String, dynamic> map = {'email': email, 'password': password};
    return map;
  }
}
