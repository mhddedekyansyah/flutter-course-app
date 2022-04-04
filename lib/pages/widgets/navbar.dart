part of 'widgets.dart';

class Navbar extends StatelessWidget {
  List<User> user = User.mockUser();
  Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.fromLTRB(defaultMargin, defaultMargin, defaultMargin, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(user.first.imgUrl),
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/btn_search.png',
                height: 45.h,
                width: 45.w,
              ),
              Image.asset(
                'assets/icons/btn_notif.png',
                height: 45.h,
                width: 45.w,
              ),
            ],
          )
        ],
      ),
    );
  }
}
