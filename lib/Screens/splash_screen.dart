// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/Screens/home_page.dart';
import 'package:laza_practice/Screens/intro_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  String name = '';
  String src = '';
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      checkdetails();
    });
  }

  void checkdetails() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var getname = pref.getString('name');
    var getsrc = pref.getString('src');
    setState(() {
      name = getname ?? '';
      src = getsrc ?? '';
    });
    if (name == '' || src == '') {
      setState(() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => IntroPage()));
      });
    } else {
      setState(() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => HomePage()));
      });
    }
  }

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
