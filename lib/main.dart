import 'package:codeunion/src/screens/auth/auth_screen.dart';
import 'package:codeunion/src/screens/registr/registr_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: //AuthScreen(),
          RegistrScreen(),
    );
  }
}
