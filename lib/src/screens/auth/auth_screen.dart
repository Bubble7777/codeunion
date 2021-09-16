import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/common/constans/padding_constans.dart';
import 'package:codeunion/src/common/widgets/custom_button.dart';
import 'package:codeunion/src/common/widgets/custom_text_field.dart';
import 'package:codeunion/src/common/widgets/text_field_divider.dart';
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
        backgroundColor: AppColor.white,
        border: Border(),
        middle: Text('Авторизация'),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              placeholder: 'Логин или почта',
            ),
            CustomTextDivider(),
            CustomTextField(
              placeholder: 'Пароль',
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding: AppPadding.horizontal,
              child: CustomButton(title: 'Войти'),
            ),
            SizedBox(
              height: 19.0,
            ),
            Padding(
              padding: AppPadding.horizontal,
              child: CustomButton(
                  title: 'Зарегистрироваться',
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterRoute);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
