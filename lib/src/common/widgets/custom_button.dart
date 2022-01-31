import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: AppColor.main,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onPressed: onPressed,
    );
  }
}
