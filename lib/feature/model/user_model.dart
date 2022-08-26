class UserModel {
  String? userId;
  String? name;
  String? email;
  String? pic;

  UserModel({this.userId, this.name, this.email, this.pic});

  factory UserModel.fromJson(Map<String, dynamic> data) {
    final userId = data['userId'] as String?;
    final name = data['name'] as String?;
    final email = data['email'] as String?;
    final pic = data['pic'] as String?;
    return UserModel(name: name, email: email, pic: pic, userId: userId);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'pic': pic,
      'userId': userId,
      'email': email,
    };
  }
}
