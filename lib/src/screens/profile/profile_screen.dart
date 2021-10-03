import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/screens/profile/profile_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = ProfilePreferences.user;

    return CupertinoPageScaffold(
        backgroundColor: AppColor.profileBackground,
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            'Профиль',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
            ),
          ),
        ),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 51.0,
                ),
                CircleAvatar(
                  backgroundColor: AppColor.profileBackground,
                  //radius: 64.0,
                  maxRadius: 64,
                  child: SvgPicture.asset(
                    user.avatar,
                    // height: 64,
                    // width: 64,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    user.nickname,
                    style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                Text(
                  user.email,
                  style: TextStyle(
                    color: AppColor.grayColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 27.0,
                ),
                Container(
                  width: double.infinity,
                  height: 55,
                  child: CupertinoButton(
                    borderRadius: null,
                    alignment: Alignment.centerLeft,
                    color: AppColor.white,
                    padding: const EdgeInsets.symmetric(horizontal: 29.0),
                    child: Text(
                      'Выйти',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: AppColor.redButton,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return Container();
          },
          itemCount: 1,
        ));
  }
}
