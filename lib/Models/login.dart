class Login {
  String? token;
  String? message;

  Login({this.token, this.message});

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        token: json['token'] as String?,
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'token': token,
        'message': message,
      };

  Login copyWith({
    String? token,
    String? message,
  }) {
    return Login(
      token: token ?? this.token,
      message: message ?? this.message,
    );
  }
}
