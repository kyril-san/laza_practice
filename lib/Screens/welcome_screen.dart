// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_input_field.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: blackcolor,
          onPressed: () {},
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: SafeArea(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              GlobalLargeText(title: 'Welcome'),
              Text('Please enter your data to continue',
                  style: Theme.of(context).textTheme.bodyMedium),
              // Spacer(),
              SizedBox(height: size.height * 0.2),

              GlobalInputfield(title: 'Username'),
              GlobalInputfield(title: 'Password'),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: redcolor),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.025),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
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
                    Icon(
                      FontAwesomeIcons.toggleOn,
                      color: greencolor,
                    )
                  ],
                ),
              ),
              // Spacer(),
              SizedBox(height: size.height * 0.23),

              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text:
                          'By connecting your account confirm that you agree \nwith our ',
                      style: Theme.of(context).textTheme.titleSmall),
                  TextSpan(
                      text: 'Term and Condition',
                      style: Theme.of(context).textTheme.bodyLarge)
                ]),
              ),
              SizedBox(height: size.height * 0.025),
              GlobalButton(title: 'Login')
            ]),
          ),
        ),
      ),
    );
  }
}
