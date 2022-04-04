part of 'widgets.dart';

class Category extends StatefulWidget {
  Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<CategoryModel> categories = CategoryModel.mockCategoryModel();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      child: ListView.separated(
          padding: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(12),
                width: 120.w,
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      categories[index].imgUrl,
                      width: 42.w,
                      height: 42.h,
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Text(
                      categories[index].name,
                      style: primaryStyle.copyWith(
                          fontSize: 12.sp, fontWeight: semibold),
                    ),
                    Text(
                      '${categories[index].total} Course',
                      style: secondaryStyle.copyWith(
                          fontSize: 10.sp, fontWeight: medium),
                    )
                  ],
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: categories.length),
    );
  }
}
