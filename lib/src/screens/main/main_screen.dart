import 'package:codeunion/src/router/router.dart';
import 'package:codeunion/src/screens/home/home_screen.dart';
import 'package:codeunion/src/screens/profile/profile_screen.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.map,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
              ),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            onGenerateRoute: AppRouter.generateRoute,
            builder: (context) {
              switch (index) {
                case 0:
                  return HomeScreen();
                case 1:
                  return ProfileScreen();
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
      ),
    );
  }
}
