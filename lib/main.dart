// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/text_theme.dart';
import 'package:laza_practice/Payment-Components/add_new_card.dart';
import 'package:laza_practice/Screens/add_new_card_screen.dart';
import 'package:laza_practice/Screens/add_review_screen.dart';
import 'package:laza_practice/Screens/address_screen.dart';
import 'package:laza_practice/Screens/cart_screen.dart';
import 'package:laza_practice/Screens/forgot_password_screen.dart';
import 'package:laza_practice/Screens/get_started_screen.dart';
import 'package:laza_practice/Screens/home_page.dart';
import 'package:laza_practice/Screens/nike_store.dart';
import 'package:laza_practice/Screens/intro_screen.dart';
import 'package:laza_practice/Screens/new_password_screen.dart';
import 'package:laza_practice/Screens/order_confirmed_screen.dart';
import 'package:laza_practice/Screens/payment_screen.dart';
import 'package:laza_practice/Screens/review_screen.dart';
import 'package:laza_practice/Screens/sign_up_screen.dart';
import 'package:laza_practice/Screens/splash_screen.dart';
import 'package:laza_practice/Screens/verification_code_screen.dart';
import 'package:laza_practice/Screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'LGS',
      routes: {
        '/': (context) => SplashScreenPage(),
        '/intro': (context) => IntroPage(),
        'LGS': (context) => LetsGetStartedPage(),
        'create': (context) => SignUpPage(),
        'signin': (context) => WelcomeScreen(),
      },
      title: 'Laza-Project',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: whitecolor,
          elevation: 0,
        ),
        textTheme: inter,
        scaffoldBackgroundColor: const Color.fromARGB(255, 254, 254, 254),
      ),
      // home: const HomePage(),
    );
  }
}
