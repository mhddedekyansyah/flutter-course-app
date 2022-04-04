class ArticleModel {
  String id;
  String name;
  String imgUrl;
  String tag;
  bool whislist;

  ArticleModel(
      {this.id = '',
      this.name = '',
      this.imgUrl = '',
      this.tag = '',
      this.whislist = false});

  static List<ArticleModel> mockArticle() {
    return [
      ArticleModel(
          name: 'How to: Work faster as\nFull Stack Designer',
          imgUrl: 'assets/images/image3.png',
          tag: 'UI Design',
          whislist: true),
      ArticleModel(
          name: 'How to: Digital Art from\nSketch',
          imgUrl: 'assets/images/image4.png',
          tag: 'Art Course'),
    ];
  }
}
