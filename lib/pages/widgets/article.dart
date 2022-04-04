part of 'widgets.dart';

class Article extends StatelessWidget {
  final List<ArticleModel> articles = ArticleModel.mockArticle();
  Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: defaultMargin,
              left: defaultMargin,
              right: defaultMargin,
              bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Articles',
                style: primaryStyle.copyWith(fontWeight: semibold),
              ),
              Text(
                'Show all',
                style: blueStyle.copyWith(fontWeight: medium, fontSize: 10),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding:
                  EdgeInsets.only(left: defaultMargin, right: defaultMargin),
              itemBuilder: (context, index) => Container(
                    height: 80.h,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 80.w,
                              height: 80.h,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomLeft: Radius.circular(12)),
                                  image: DecorationImage(
                                      image: AssetImage(articles[index].imgUrl),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    articles[index].name,
                                    style: primaryStyle.copyWith(
                                        fontSize: 12.sp, fontWeight: semibold),
                                  ),
                                  Text(
                                    articles[index].tag,
                                    style: secondaryStyle.copyWith(
                                        fontSize: 10.sp, fontWeight: medium),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: defaultMargin),
                          child: Image.asset(
                            'assets/icons/icon_love${articles[index].whislist ? '.png' : '_outlined.png'}',
                            width: 16.w,
                            height: 16.h,
                          ),
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (_, index) => SizedBox(
                    height: 15.h,
                  ),
              itemCount: articles.length),
        ),
        SizedBox(
          height: 50.h,
        )
      ],
    );
  }
}
