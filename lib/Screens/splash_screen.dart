import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: primarycolor,
      body: SafeArea(
          child: Center(
        child: Image(
          image: const AssetImage('images/Logo.png'),
          color: whitecolor,
          width: size.width * 0.15,
        ),
      )),
    );
  }
}
