class CategoryModel {
  String id;
  String name;
  String imgUrl;
  int total;

  CategoryModel(
      {this.id = '', this.name = '', this.imgUrl = '', this.total = 0});

  static List<CategoryModel> mockCategoryModel() {
    return [
      CategoryModel(
          name: 'Design', imgUrl: 'assets/icons/icon_design.png', total: 49),
      CategoryModel(
          name: 'Soft Skill',
          imgUrl: 'assets/icons/icon_softskill.png',
          total: 12),
      CategoryModel(
          name: 'Art', imgUrl: 'assets/icons/icon_art.png', total: 50),
    ];
  }
}
