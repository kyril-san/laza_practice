// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:laza_practice/Get-Verification-Components/one_value_input_field.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.02),
            child: BackButton(color: blackcolor, onPressed: () {}),
          ),
          GlobalLargeText(title: 'Verification Code'),
          SizedBox(height: size.height * 0.025),
          Center(
            child: Image(
              image: AssetImage('images/Cloudlock.png'),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OneValueInputField(),
              OneValueInputField(),
              OneValueInputField(),
              OneValueInputField(),
            ],
          ),
          Spacer(
            flex: 4,
          ),
          // SizedBox(height: size.height * 0.3),

          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: '00:20 ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Resend Confirmation Code',
                    style: Theme.of(context).textTheme.titleSmall)
              ]),
            ),
          ),
          // SizedBox(height: size.height * 0.025),
          Spacer(),
          GlobalButton(
            title: 'Confirm Email',
            ontap: () {},
          )
        ],
      )),
    );
  }
}
