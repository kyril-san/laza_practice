class LoginModelclass {
  String username;
  String password;

  LoginModelclass({required this.username, required this.password});

  Map<String, dynamic> tojson() {
    Map<String, dynamic> map = {'username': username, 'password': password};
    return map;
  }
}
