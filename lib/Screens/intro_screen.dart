// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/Introscreen_components/men_women_button.dart';
import 'package:laza_practice/Screens/get_started_screen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: primarycolor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/backgroundimage.png'),
              fit: BoxFit.contain),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(size.width * 0.03),
            height: size.height * 0.3,
            width: size.width,
            decoration: BoxDecoration(
              color: whitecolor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Look Good, Feel Good',
                    style: Theme.of(context).textTheme.displayLarge),
                SizedBox(height: size.height * 0.01),
                Text(
                    'Create your individual & unique style and look amazing everyday.',
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenandWomenButton(title: 'men', isclicked: false),
                    MenandWomenButton(title: 'Women', isclicked: true)
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => LetsGetStartedPage()));
                    },
                    child: Text('Skip',
                        style: Theme.of(context).textTheme.titleLarge))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
