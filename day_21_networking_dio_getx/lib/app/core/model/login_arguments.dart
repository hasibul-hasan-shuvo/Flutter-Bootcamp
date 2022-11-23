class LoginArguments {
  LoginArguments({
    this.userId,
    this.password,
  });

  String? userId;
  String? password;
  LoginArguments copyWith({
    String? userId,
    String? password,
  }) =>
      LoginArguments(
        userId: userId ?? this.userId,
        password: password ?? this.password,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = userId;
    map['password'] = password;

    return map;
  }
}
