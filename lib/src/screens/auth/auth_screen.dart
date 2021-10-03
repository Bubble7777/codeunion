import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/common/constans/padding_constans.dart';
import 'package:codeunion/src/common/models/tokens_model.dart';
import 'package:codeunion/src/common/widgets/custom_button.dart';
import 'package:codeunion/src/common/widgets/custom_text_field.dart';
import 'package:codeunion/src/common/widgets/text_field_divider.dart';
import 'package:codeunion/src/router/routing_const.dart';
import 'package:dio/dio.dart';

import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Dio dio = Dio();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              controller: emailController,
            ),
            CustomTextDivider(),
            CustomTextField(
              placeholder: 'Пароль',
              controller: passwordController,
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding: AppPadding.horizontal,
              child: CustomButton(
                title: 'Войти',
                onPressed: () async {
                  Box tokensBox = Hive.box('tokens');

                  try {
                    Response response = await dio.post(
                      'http://api.codeunion.kz/api/v1/auth/login',
                      data: {
                        'email': emailController.text,
                        'password': passwordController.text,
                      },
                    );
                    TokensModel tokensModel =
                        TokensModel.fromJson(response.data['tokens']);

                    tokensBox.put('access', tokensModel.access);
                    tokensBox.put('refresh', tokensModel.refresh);

                    Navigator.pushReplacementNamed(context, MainRoute);
                  } on DioError catch (e) {
                    print(e.response!.data);
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('Ошибка'),
                          content: Text('Неправильный логин или пароль!'),
                          actions: [
                            CupertinoButton(
                              child: Text('Ok'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        );
                      },
                    );
                    throw e;
                  }
                },
              ),
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
