class SignupResponseModel {
  String? message;
  String? data;
  String? error;
  String? id;

  SignupResponseModel(
      {required this.message,
      required this.data,
      required this.error,
      required this.id});

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) {
    return SignupResponseModel(
        message: json['message'],
        data: json['data'],
        error: json['error'],
        id: json['id']);
  }
}
