import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/screens/home/home_variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustmCardHome extends StatelessWidget {
  const CustmCardHome({
    Key? key,
    required this.restaurants,
    required this.index,
  }) : super(key: key);

  final List<HomeVariable> restaurants;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(
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
  }
}
