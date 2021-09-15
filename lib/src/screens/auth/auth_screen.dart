import 'package:codeunion/src/router/routing_const.dart';
import 'package:codeunion/src/screens/register/register_screen.dart';
import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFE5E5E5),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border(),
        middle: Text('Авторизация'),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(
              padding: EdgeInsets.symmetric(
                vertical: 19.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                border: Border(),
                color: CupertinoColors.white,
              ),
              placeholder: "Логин или почта",
            ),
            Container(
              height: 1.0,
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              color: Color(0xFFE0E6ED),
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
              placeholder: "пароль",
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CupertinoButton(
                color: Color(0xFF4631D2),
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Войти',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 19.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CupertinoButton(
                color: Color(0xFF4631D2),
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RegisterRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
