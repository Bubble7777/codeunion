import 'package:codeunion/src/common/dependencies/injection_container.dart';
import 'package:codeunion/src/router/routing_const.dart';
import 'package:codeunion/src/screens/auth/auth_screen.dart';
import 'package:codeunion/src/screens/auth/bloc/log_in_bloc.dart';
import 'package:codeunion/src/screens/main/main_screen.dart';
import 'package:codeunion/src/screens/register/bloc/log_up_bloc.dart';
import 'package:codeunion/src/screens/register/register_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider<LogInBloc>(
            create: (context) => LogInBloc(dio: getIt<Dio>()),
            child: AuthScreen(),
          ),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider<LogUpBloc>(
            create: (context) => LogUpBloc(dio: getIt<Dio>()),
            child: RegisterScreen(),
          ),
        );
      case MainRoute:
        return CupertinoPageRoute(
          builder: (context) => MainScreen(),
        );
      default:
        return CupertinoPageRoute(
            builder: (context) => BlocProvider<LogInBloc>(
                  create: (context) => LogInBloc(dio: getIt<Dio>()),
                  child: AuthScreen(),
                ));
    }
  }
}
