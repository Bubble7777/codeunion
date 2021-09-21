import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/common/constans/icons_constans.dart';
import 'package:codeunion/src/common/constans/padding_constans.dart';
import 'package:codeunion/src/screens/home/home_preferences.dart';
import 'package:codeunion/src/screens/home/home_variable.dart';
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
          backgroundColor: AppColor.white,
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
          //shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 16.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Ink.image(
                    height: 150,
                    image: NetworkImage(restaurants[index].urlPhoto),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            top: 12.0,
                            right: 0.0,
                            bottom: 12.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                restaurants[index].placeName,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0,
                                  color: AppColor.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2.0,
                                ),
                                child: Text(
                                  restaurants[index].description,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                restaurants[index].streetName,
                              ),
                            ],
                          ),
                        ),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.symmetric(
                          vertical: 12.0,
                        ),
                        child: IconButton(
                            splashRadius: 1.0,
                            icon: Icon(
                              Icons.favorite_border,
                            ),
                            onPressed: () {}),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container();
          },
          itemCount: restaurants.length,
        ));
  }
}
