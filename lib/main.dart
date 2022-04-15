import 'package:flutter/material.dart';
import 'package:meetdr/home/main_page.dart';
import 'package:meetdr/pages/sign_up.dart';
import 'package:meetdr/pages/sign_in.dart';
import 'package:meetdr/pages/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
