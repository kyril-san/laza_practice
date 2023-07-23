// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_practice/ApisandUserdata/UserData/login_model_class.dart';
import 'package:laza_practice/ApisandUserdata/apis/login_apis.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_input_field.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';
import 'package:laza_practice/Screens/home_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
bool _isclicked = false;

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: Form(
            key: _formkey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.02),
                    child: BackButton(color: blackcolor, onPressed: () {}),
                  ),
                  GlobalLargeText(title: 'Welcome'),
                  Center(
                    child: Text('Please enter your data to continue',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  // Spacer(),
                  SizedBox(height: size.height * 0.2),

                  GlobalInputfield(
                    title: 'Username',
                    controller: email,
                  ),
                  GlobalInputfield(
                    title: 'Password',
                    controller: password,
                  ),
                  SizedBox(height: size.height * 0.03),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'FP'),
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: redcolor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.025),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.04),
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isclicked = !_isclicked;
                            });
                          },
                          child: _isclicked
                              ? Icon(
                                  FontAwesomeIcons.toggleOn,
                                  color: greencolor,
                                )
                              : Icon(
                                  FontAwesomeIcons.toggleOff,
                                  color: blackcolor,
                                ),
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  // SizedBox(height: size.height * 0.23),
                  Center(
                    child: RichText(
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
                  ),
                  Spacer(),
                  GlobalButton(
                    title: 'Login',
                    ontap: () async {
                      if (_formkey.currentState!.validate()) {
                        debugPrint('success,');
                        LoginModelclass data = LoginModelclass(
                            email: email.text.trim(),
                            password: password.text.trim());

                        final res = await Loginclass.loginapi(data);
                        if (res.message == 'Sucessfully Logged in') {
                          debugPrint('data: ${res.token}');
                          setState(() {
                            password.clear();
                            email.clear();
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HomePage(title: res)));
                          });
                        } else if (res.message == 'Incorret Login Details') {
                          // debugPrint('data: ${res.token}');
                          setState(() {
                            password.clear();
                            email.clear();
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text('Error'),
                                      content: Text(res.message!),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text('Okay'))
                                      ],
                                    ));
                          });
                        }
                      }
                    },
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
