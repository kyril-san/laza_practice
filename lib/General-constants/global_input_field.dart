import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_practice/General-constants/const.dart';

class GlobalInputfield extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const GlobalInputfield({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.height * 0.01),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please put in a value';
          }
          return null;
        },
        style: Theme.of(context).textTheme.bodyLarge,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            labelText: title,
            labelStyle: Theme.of(context).textTheme.bodySmall,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: greycolor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: greycolor),
            ),
            suffixText: '✔',
            suffixStyle: GoogleFonts.inter(
                color: greencolor, fontSize: 11, fontWeight: FontWeight.w400)),
      ),
    );
  }
}
