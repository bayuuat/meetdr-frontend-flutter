class UserModel {
  int id;
  String name;
  String email;
  String username;
  String image;
  String token;

  UserModel(
      {this.id, this.name, this.email, this.username, this.image, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    image = json['image'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'image': image,
      'token': token,
    };
  }
}
