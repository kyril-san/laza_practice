class LoginModelclass {
  String username;
  String password;

  LoginModelclass({required this.username, required this.password});

  Map<String, dynamic> tojson() {
    Map<String, dynamic> map = {'username': username, 'password': password};
    return map;
  }
}

class LoginResponseModel {
  String id;
  String name;
  String image;
  String token;

  LoginResponseModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.token});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
        id: json['id'],
        name: json['firstName'],
        image: json['image'],
        token: json['token']);
  }
}
