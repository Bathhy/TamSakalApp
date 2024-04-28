class User {
  final String email;
  final String password;
  final String userName;

  User({
    required this.email,
    required this.password,
    required this.userName,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'userName': userName,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      password: json['password'],
      userName: json['userName'],
    );
  }
}
