// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_input_field.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

TextEditingController password = TextEditingController();
TextEditingController password2 = TextEditingController();

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackButton(
          color: blackcolor,
          onPressed: () {},
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: SafeArea(
          child: Column(
            children: [
              GlobalLargeText(title: 'New Password'),
              Spacer(),
              // SizedBox(height: size.height * 0.3),

              GlobalInputfield(
                title: 'Password',
                controller: password,
              ),
              GlobalInputfield(
                title: 'Confirm Password',
                controller: password2,
              ),
              Spacer(),
              // SizedBox(height: size.height * 0.278),

              Text('Please write your new password',
                  style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: size.height * 0.025),
              // Spacer(),
              GlobalButton(
                title: 'Reset Password',
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
