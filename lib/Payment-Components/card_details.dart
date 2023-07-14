// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_practice/General-constants/const.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.only(left: size.width * 0.04),
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.02),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage('images/cardbackground.png'),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Muna rich', style: Theme.of(context).textTheme.labelMedium),
              Image(image: AssetImage('images/Visa.png'))
            ],
          ),
          Spacer(flex: 3),
          Text('Visa Classic', style: Theme.of(context).textTheme.labelMedium),
          Text('5254 **** **** 7690',
              style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: whitecolor,
                  letterSpacing: 7)),
          Spacer(),
          Text('\$3,763.87', style: Theme.of(context).textTheme.labelMedium),
          Spacer(),
        ],
      ),
    );
  }
}
