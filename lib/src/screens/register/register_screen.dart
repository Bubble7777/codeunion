import 'package:codeunion/src/common/constans/icons_constans.dart';

import 'package:codeunion/src/common/widgets/custom_button.dart';
import 'package:codeunion/src/common/widgets/custom_text_field.dart';
import 'package:codeunion/src/common/widgets/text_field_divider.dart';
import 'package:codeunion/src/router/routing_const.dart';
import 'package:codeunion/src/screens/register/bloc/log_up_bloc.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nickNameController = TextEditingController();
  final TextEditingController phoneNumController = TextEditingController();
  final TextEditingController emailRegController = TextEditingController();
  final TextEditingController passwordRegController = TextEditingController();

  bool obscureText = true;

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
            controller: nickNameController,
          ),
          CustomTextDivider(),
          CustomTextField(
            placeholder: 'Телефон',
            controller: phoneNumController,
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
          CustomTextDivider(),
          CustomTextField(
            placeholder: 'Почта',
            controller: emailRegController,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomTextDivider(),
          CustomTextField(
            obscureText: obscureText,
            placeholder: 'Пароль',
            controller: passwordRegController,
            suffix: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 16.0),
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: SvgPicture.asset(
                  AppIcon.password,
                  height: 19,
                  width: 24,
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 42.0,
            ),
            child: BlocConsumer<LogUpBloc, LogUpState>(
              listener: (context, state) {
                if (state is LogUpLoaded) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, MainRoute, (route) => false);
                } else if (state is LogUpFailed) {
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
                      });
                }
              },
              builder: (context, state) {
                return CustomButton(
                  title: 'Создать аккаунт',
                  onPressed: state is LogUpLoading
                      ? null
                      : () {
                          context.read<LogUpBloc>().add(
                                LogUpPressed(
                                  nickname: nickNameController.text,
                                  phone: phoneNumController.text,
                                  email: emailRegController.text,
                                  password: passwordRegController.text,
                                ),
                              );
                        },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
