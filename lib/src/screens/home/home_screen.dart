import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/common/constans/icons_constans.dart';
import 'package:codeunion/src/common/constans/padding_constans.dart';
import 'package:codeunion/src/screens/home/home_custom_cards.dart';
import 'package:codeunion/src/screens/home/home_preferences.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final restaurants = HomePrefences.restaurants;

    return CupertinoPageScaffold(
        backgroundColor: AppColor.scaffoldBackground,
        navigationBar: CupertinoNavigationBar(
          border: Border(),
          backgroundColor: AppColor.scaffoldBackground,
          middle: Padding(
            padding: AppPadding.horizontal,
            child: CupertinoTextField(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.divider,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(3.0),
              ),
              placeholder: 'Поиск',
              prefix: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SvgPicture.asset(AppIcon.search),
              ),
            ),
          ),
        ),
        child: ListView.separated(
          padding: EdgeInsets.only(
            top: 20.0,
          ),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return CustmCardHome(
              restaurants: restaurants,
              index: index,
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              height: 20.0,
            );
          },
          itemCount: restaurants.length,
        ));
  }
}
