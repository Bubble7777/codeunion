import 'package:codeunion/src/common/constans/color_constans.dart';
import 'package:codeunion/src/router/router.dart';
import 'package:codeunion/src/router/routing_const.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

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
    print(initialRoute);
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
