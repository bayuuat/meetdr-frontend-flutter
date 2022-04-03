import 'package:flutter/material.dart';
// import 'package:meetdr/pages/cart.dart';
// import 'package:meetdr/pages/checkout.dart';
// import 'package:meetdr/pages/checkout_success.dart';
// import 'package:meetdr/pages/detail_chat.dart';
// import 'package:meetdr/pages/edit_profile.dart';
// import 'package:meetdr/pages/product.dart';
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
        // '/home': (context) => MainPage(),
        // '/detail-chat': (context) => DetailChatPage(),
        // '/edit-profile': (context) => EditProfilePage(),
        // '/product': (context) => ProductPage(),
        // '/cart': (context) => CartPage(),
        // '/checkout': (context) => CheckoutPage(),
        // '/success': (context) => SuccessPage(),
      },
    );
  }
}

class MainPage {}
