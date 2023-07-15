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
      appBar: AppBar(
        leading: BackButton(
          color: blackcolor,
          onPressed: () {},
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlobalLargeText(title: 'Verification Code'),
            SizedBox(height: size.height * 0.025),
            Image(
              image: AssetImage('images/Cloudlock.png'),
              fit: BoxFit.contain,
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
            // Spacer(),
            SizedBox(height: size.height * 0.35),

            RichText(
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
            SizedBox(height: size.height * 0.025),
            GlobalButton(title: 'Confirm Email')
          ],
        ),
      )),
    );
  }
}
