class LoginModelClass {
  String? email;
  String? username;
  String? password;

  LoginModelClass({this.email, this.username, this.password});
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email,
      'username': username,
      'password': password
    };
    return map;
  }
}
