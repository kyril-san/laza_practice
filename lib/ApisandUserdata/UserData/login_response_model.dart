class LoginResponseModel {
  int? id;
  String? name;
  String? image;
  String? message;
  String? token;

  LoginResponseModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.message,
      required this.token});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
        id: json['id'],
        name: json['firstName'],
        image: json['image'],
        message: json['message'] ?? 'Successful',
        token: json['token']);
  }
}
