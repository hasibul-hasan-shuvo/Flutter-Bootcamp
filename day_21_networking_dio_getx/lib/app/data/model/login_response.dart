class LoginResponse {
  LoginResponse({
    this.status,
    this.message,
    this.token,
  });

  LoginResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
  }
  bool? status;
  String? message;
  String? token;
}
