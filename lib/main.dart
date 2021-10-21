import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/router/router.dart';
import 'package:codeunion/src/router/routing_const.dart';
import 'package:codeunion/src/screens/auth/auth_screen.dart';
import 'package:codeunion/src/screens/auth/bloc/log_in_bloc.dart';
import 'package:codeunion/src/screens/home/home_screen.dart';
import 'package:codeunion/src/screens/main/main_screen.dart';
import 'package:codeunion/src/screens/profile/profile_screen.dart';
import 'package:codeunion/src/screens/register/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('tokens');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String initialRoute = AuthRoute;

  @override
  void initState() {
    Box tokensBox = Hive.box('tokens');

    if (tokensBox.get('access') != null || tokensBox.get('refresh') != null) {
      initialRoute = MainRoute;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: AppColor.scaffoldBackground,
      ),
      initialRoute: initialRoute,
      // home: BlocProvider<LogInBloc>(
      //   create: (context) => LogInBloc(),
      //   child: AuthScreen(),
      // ),
      //HomeScreen(),
      //     MainScreen(),
      //AuthScreen(),
      // // RegisterScreen(),
    );
  }
}
