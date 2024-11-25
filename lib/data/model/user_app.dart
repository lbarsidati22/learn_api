class UserApp {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;
  UserApp({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });
  factory UserApp.fromJson(Map<String, dynamic> json) => UserApp(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar'],
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'avatar': avatar,
        'first_name': firstName,
        'last_name': lastName,
      };
}
