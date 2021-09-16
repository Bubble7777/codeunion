import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/common/constans/padding_constans.dart';
import 'package:flutter/cupertino.dart';

class CustomTextDivider extends StatelessWidget {
  const CustomTextDivider({
    Key? key,
    this.height = 1,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: AppPadding.horizontal,
      color: AppColor.divider,
    );
  }
}
