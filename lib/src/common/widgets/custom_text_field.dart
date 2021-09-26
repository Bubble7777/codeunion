import 'package:flutter/cupertino.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.placeholder = 'Введите',
    this.suffix,
    this.controller,
  }) : super(key: key);

  final String placeholder;
  final Widget? suffix;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      decoration: BoxDecoration(
        border: Border(),
        color: CupertinoColors.white,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 19.0,
        horizontal: 16.0,
      ),
      placeholder: placeholder,
      suffix: suffix,
    );
  }
}
