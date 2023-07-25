// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza_practice/Get-Started-components/social_media.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';
import 'package:laza_practice/Screens/sign_up_screen.dart';
import 'package:laza_practice/Screens/welcome_screen.dart';

import '../General-constants/global_button.dart';

class LetsGetStartedPage extends StatefulWidget {
  const LetsGetStartedPage({super.key});

  @override
  State<LetsGetStartedPage> createState() => _LetsGetStartedPageState();
}

late TapGestureRecognizer _tapgesture;

class _LetsGetStartedPageState extends State<LetsGetStartedPage> {
  @override
  void dispose() {
    super.dispose();
    _tapgesture.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tapgesture = TapGestureRecognizer()..onTap = () => _navigate();
  }

  void _navigate() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => WelcomeScreen()));
    HapticFeedback.vibrate();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
        color: blackcolor,
        onPressed: () {
          Navigator.pop(context);
        },
      )),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GlobalLargeText(title: r"let's Get Started"),
          Spacer(),
          Column(
            children: const [
              SocialMedia(
                  title: 'Facebook',
                  color: Color.fromARGB(255, 66, 103, 178),
                  icon: FontAwesomeIcons.facebookF),
              SocialMedia(
                  title: 'twitter',
                  color: Color.fromARGB(255, 29, 161, 242),
                  icon: FontAwesomeIcons.twitter),
              SocialMedia(
                  title: 'Google',
                  color: Color.fromARGB(255, 234, 67, 53),
                  icon: FontAwesomeIcons.google),
            ],
          ),
          Spacer(),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Already have an Account,',
                  style: Theme.of(context).textTheme.titleSmall),
              TextSpan(
                  text: 'Sign In',
                  style: Theme.of(context).textTheme.bodyLarge,
                  recognizer: _tapgesture)
            ]),
          ),
          SizedBox(height: size.height * 0.025),
          GlobalButton(
            title: 'Create an Account',
            ontap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUpPage()));
              });
            },
          )
        ],
      )),
    );
  }
}
