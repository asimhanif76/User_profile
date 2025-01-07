class UserModel {
  String userName;
  String email;
  String password;
  String number;
  UserModel({
    required this.userName,
    required this.email,
    required this.number,
    required this.password,
  });
}

class userImageModel {
  String? path;

  userImageModel({required String path});
}
