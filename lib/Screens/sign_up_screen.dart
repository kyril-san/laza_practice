// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_input_field.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.02),
                    child: BackButton(
                        color: blackcolor,
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        }),
                  ),
                  GlobalLargeText(title: 'Sign Up'),
                  // Spacer(),
                  SizedBox(height: size.height * 0.25),

                  GlobalInputfield(title: 'Username'),
                  GlobalInputfield(title: 'Password'),
                  GlobalInputfield(title: 'Email Address'),
                  SizedBox(height: size.height * 0.03),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Remember me',
                          style: GoogleFonts.manrope(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: blackcolor),
                        ),
                        Icon(FontAwesomeIcons.toggleOn, color: greencolor)
                      ],
                    ),
                  ),
                  Spacer(),
                  // SizedBox(height: size.height * 0.229),

                  GlobalButton(title: 'Login')
                ]),
          ),
        ),
      ),
    );
  }
}
