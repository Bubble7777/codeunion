import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/common/constans/padding_constans.dart';
import 'package:codeunion/src/common/widgets/custom_button.dart';
import 'package:codeunion/src/common/widgets/custom_text_field.dart';
import 'package:codeunion/src/common/widgets/text_field_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFE5E5E5),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border(),
        middle: Text(
          'Регистрация',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15.0,
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF000000),
          size: 16.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 32.0,
          ),
          CustomTextField(
            placeholder: 'Логин',
          ),
          CustomTextDivider(),
          CustomTextField(
            placeholder: 'Телефон',
          ),
          CustomTextDivider(),
          CustomTextField(
            placeholder: 'Почта',
          ),
          CustomTextDivider(),
          CupertinoTextField(
            suffix: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 16.0),
              child: SvgPicture.asset(
                'assets/icons/password.svg',
                height: 19,
                width: 24,
              ),
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 19.0,
              horizontal: 16.0,
            ),
            placeholder: 'Пароль',
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 42.0,
            ),
            child: CustomButton(title: 'Создать аккаунт', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
