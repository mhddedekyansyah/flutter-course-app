class CourseModel {
  String id;
  String name;
  String imgUrl;
  double rating;
  int total;
  String type = 'Free';

  CourseModel(
      {this.id = '',
      this.name = '',
      this.imgUrl = '',
      this.rating = 0.0,
      this.type = 'Free',
      this.total = 0});

  static List<CourseModel> mockCourse() {
    return [
      CourseModel(
          name: 'UI Design : Wireframe to Visual Design',
          total: 4016,
          rating: 5.0,
          imgUrl: 'assets/images/image1.png'),
      CourseModel(
          name: 'UI Design : Styleguide with Figma',
          total: 1055,
          rating: 5.0,
          imgUrl: 'assets/images/image2.png'),
    ];
  }
}
