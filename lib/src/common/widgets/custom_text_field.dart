import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.placeholder = 'Введите',
    this.suffix,
    this.controller,
    this.keyboardType,
    this.inputFormatters,
    this.obscureText = false,
  }) : super(key: key);

  final String placeholder;
  final Widget? suffix;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      obscureText: obscureText,
      inputFormatters: [],
      keyboardType: keyboardType,
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
