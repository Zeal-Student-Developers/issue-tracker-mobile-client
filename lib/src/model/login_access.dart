class LoginResponseModel {
  final String token;
  final String error;

  LoginResponseModel({required this.token, required this.error});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class LoginRequestModel {
  String zprn;
  String password;

  LoginRequestModel(
    this.zprn,
    this.password,
  );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'zprn': zprn.trim(),
      'password': password.trim(),
    };

    return map;
  }
}
