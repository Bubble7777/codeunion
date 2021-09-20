import 'package:codeunion/src/screens/profile/profile_screen.dart';
import 'package:codeunion/src/screens/register/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:codeunion/src/screens/auth/auth_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gift),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile_avatar.svg',
              alignment: Alignment.center,
              width: 17,
              height: 17,
            ),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return AuthScreen();
              case 1:
                return RegisterScreen();
              case 2:
                return ProfileScreen();
              case 3:
                return ProfileScreen();
              default:
                return ProfileScreen();
            }
          },
        );
      },
    );
  }
}
