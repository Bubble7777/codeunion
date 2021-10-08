import 'package:codeunion/src/router/routing_const.dart';
import 'package:codeunion/src/screens/auth/auth_screen.dart';
import 'package:codeunion/src/screens/auth/bloc/log_in_bloc.dart';
import 'package:codeunion/src/screens/register/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LogInBloc(),
            child: AuthScreen(),
          ),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => RegisterScreen(),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => AuthScreen(),
        );
    }
  }
}
