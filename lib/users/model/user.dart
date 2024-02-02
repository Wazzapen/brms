class User {
  int uid;
  String username;
  String email;
  String upassword;

  User(
    this.uid,
    this.username,
    this.email,
    this.upassword,
  );

  factory User.fromJson(Map<String, dynamic> json) => User(
        int.parse(json["id"]),
        json["username"],
        json["email"],
        json["upassword"],
      );

  Map<String, dynamic> toJson() => {
        'id': uid.toString(),
        'username': username,
        'email': email,
        'upassword': upassword,
      };
}
