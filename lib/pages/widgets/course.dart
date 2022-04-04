part of 'widgets.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  final List<CourseModel> courses = CourseModel.mockCourse();
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
                'Popular Course',
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
          height: 205.h,
          child: ListView.separated(
              padding:
                  EdgeInsets.only(left: defaultMargin, right: defaultMargin),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    width: 180.w,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 100.h,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12)),
                              image: DecorationImage(
                                  image: AssetImage(courses[index].imgUrl),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                courses[index].type,
                                style: greenStyle.copyWith(
                                    fontSize: 12.sp, fontWeight: semibold),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                courses[index].name,
                                style: primaryStyle.copyWith(
                                    fontSize: 12.sp, fontWeight: semibold),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Row(
                                children: [
                                  for (var i = 0;
                                      i < courses[index].rating.toInt();
                                      i++)
                                    Image.asset(
                                      'assets/icons/star.png',
                                      width: 16.w,
                                      height: 16.h,
                                    ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    '(${courses[index].total})',
                                    style: secondaryStyle.copyWith(
                                        fontSize: 10.sp, fontWeight: medium),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (_, index) => const SizedBox(
                    width: 15,
                  ),
              itemCount: courses.length),
        )
      ],
    );
  }
}
