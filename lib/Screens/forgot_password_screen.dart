// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_input_field.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

TextEditingController email = TextEditingController();

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackButton(
          color: blackcolor,
          onPressed: () => setState(() {
            Navigator.pop(context);
          }),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlobalLargeText(title: 'Forgot Password'),
            SizedBox(height: size.height * 0.025),
            Image(
              image: AssetImage('images/Cloudlock.png'),
              fit: BoxFit.contain,
            ),
            SizedBox(height: size.height * 0.03),
            GlobalInputfield(
              title: 'Email Address',
              controller: email,
            ),
            Spacer(),
            // SizedBox(height: size.height * 0.325),

            Text(
              'Please write your email to receive a \nconfirmation code to set a new password',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            // Spacer(),
            SizedBox(height: size.height * 0.025),
            GlobalButton(
              title: 'Confirm Email',
              ontap: () {},
            )
          ],
        )),
      ),
    );
  }
}
