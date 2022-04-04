part of 'pages.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: defaultBackground,
      bottomNavigationBar: BottomAppBar(
          child: Container(
        width: double.infinity,
        height: 72.h,
        color: navBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/icons/Icon_home.png',
              width: 20.w,
              height: 20.h,
            ),
            Image.asset('assets/icons/icon_explore.png',
                width: 20.w, height: 20.h),
            Image.asset('assets/icons/icon_whislist.png',
                width: 20.w, height: 20.h),
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/profile.png'),
            )
          ],
        ),
      )),
      body: SafeArea(
          child: ListView(children: [
        Navbar(),
        Padding(
          padding: EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, bottom: 12),
          child: Text(
            'Want to Study Class\nwhat\'s Today?',
            style: primaryStyle.copyWith(fontWeight: semibold, fontSize: 18),
          ),
        ),
        Category(),
        Course(),
        Article()
      ])),
    );
  }
}
