class User {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;

  User({
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
  });

  factory User.fromJson(Map<String,dynamic> json){
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
    );
  }

  static List<User> fromJsonList(List<dynamic> userJsonList){
    List<User> usersList = List<User>();
    userJsonList.forEach((dynamic userJson){
      usersList.add(User.fromJson(userJson));
    });
    return usersList;
  }
}
