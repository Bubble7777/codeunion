import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrScreen extends StatelessWidget {
  const RegistrScreen({Key? key}) : super(key: key);

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
          CupertinoTextField(
            decoration: BoxDecoration(
              border: Border(),
              color: CupertinoColors.white,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 19.0,
              horizontal: 16.0,
            ),
            placeholder: 'Логин',
          ),
          Container(
            height: 1.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Color(0xFFE0E6ED),
          ),
          CupertinoTextField(
            decoration: BoxDecoration(
              color: CupertinoColors.white,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 19.0,
              horizontal: 16.0,
            ),
            placeholder: 'Телефон',
          ),
          Container(
            height: 1.0,
            color: Color(0xFFE0E6ED),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
          ),
          CupertinoTextField(
            decoration: BoxDecoration(
              color: CupertinoColors.white,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 19.0,
              horizontal: 16.0,
            ),
            placeholder: 'Почта',
          ),
          Container(
            height: 1.0,
            color: Color(0xFFE0E6ED),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
          ),
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
              color: CupertinoColors.white,
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
            child: CupertinoButton(
              color: Color(0xFF4631D2),
              child: Text(
                'Создать аккаунт',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
