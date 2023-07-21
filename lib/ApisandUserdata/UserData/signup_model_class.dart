class SignupModelClass {
  String email;
  String name;
  String password;
  String phoneno;

  SignupModelClass(
      {required this.email,
      required this.name,
      required this.password,
      required this.phoneno});
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'name': name,
      'email': email,
      'password': password,
      'phone': phoneno
    };
    return map;
  }
}
