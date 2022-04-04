class User {
  String id;
  String name;
  String imgUrl;

  User({this.id = '', this.name = '', this.imgUrl = ''});

  static List<User> mockUser() {
    return [User(imgUrl: 'assets/images/profile.png')];
  }
}
