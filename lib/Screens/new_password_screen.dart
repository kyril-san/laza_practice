// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_input_field.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
        child: Column(
          children: [
            GlobalLargeText(title: 'New Password'),
            Spacer(),
            GlobalInputfield(title: 'Password'),
            GlobalInputfield(title: 'Confirm Password'),
            Spacer(),
            Text('Please write your new password',
                style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: size.height * 0.025),
            GlobalButton(title: 'Reset Password'),
          ],
        ),
      ),
    );
  }
}
