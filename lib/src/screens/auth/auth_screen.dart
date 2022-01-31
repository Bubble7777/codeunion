import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/common/constans/padding_constans.dart';

import 'package:codeunion/src/common/widgets/custom_button.dart';
import 'package:codeunion/src/common/widgets/custom_text_field.dart';
import 'package:codeunion/src/common/widgets/text_field_divider.dart';
import 'package:codeunion/src/router/routing_const.dart';
import 'package:codeunion/src/screens/auth/bloc/log_in_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';

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
              child: BlocConsumer<LogInBloc, LogInState>(
                bloc: BlocProvider.of(context),
                listener: (context, state) {
                  if (state is LogInLoaded) {
                    Navigator.pushReplacementNamed(context, MainRoute);
                  } else if (state is LogInFailed) {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('Ошибка'),
                          content: Text(state.message),
                          actions: [
                            CupertinoButton(
                              child: Text('ОК'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                builder: (context, state) {
                  return CustomButton(
                    title: 'Войти',
                    onPressed: state is LogInLoading
                        ? null
                        : () {
                            context.read<LogInBloc>().add(
                                  LogInPressed(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  ),
                                );
                          },
                  );
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
