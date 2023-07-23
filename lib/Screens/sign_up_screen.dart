// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_practice/ApisandUserdata/UserData/signup_model_class.dart';
import 'package:laza_practice/ApisandUserdata/apis/signup_apis.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_input_field.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController phone = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
  @override
  void dispose() {
    super.dispose();
    username.dispose();
    password.dispose();
    email.dispose();
  }

  final _formfield = GlobalKey<FormState>();
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
            child: Form(
              key: _formfield,
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
                    SizedBox(height: size.height * 0.1),

                    GlobalInputfield(title: 'Username', controller: username),
                    GlobalInputfield(title: 'Password', controller: password),
                    GlobalInputfield(title: 'Email Address', controller: email),
                    GlobalInputfield(title: 'Phone', controller: phone),

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

                    GlobalButton(
                      title: 'Login',
                      ontap: () async {
                        if (_formfield.currentState!.validate()) {
                          debugPrint('success');
                          SignupModelClass data = SignupModelClass(
                            email: email.text.trim(),
                            name: username.text.trim(),
                            password: password.text.trim(),
                            phoneno: phone.text.trim(),
                          );

                          final response = await SignUp.signupapi(data);
                          if (response.message ==
                              'User Registered Successfully ') {
                            debugPrint('data: ${response.data}');
                            setState(() {
                              email.clear();
                              password.clear();
                              username.clear();
                              phone.clear();
                              Navigator.pushNamed(context, 'LGS');
                            });
                          } else if (response.error ==
                              'User Already Existss ') {
                            setState(() {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text('Error'),
                                        content: Text(
                                            '${response.error!} \nRouting you to the Login screen in 3 sec'),
                                      ));
                            });
                            Future.delayed(Duration(seconds: 3), () {
                              Navigator.pushReplacementNamed(context, 'signin');
                            });
                          } else {
                            setState(() {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text('error'),
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
      ),
    );
  }
}
