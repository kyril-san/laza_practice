import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_practice/General-constants/const.dart';

class SocialMedia extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const SocialMedia({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.height * 0.005),
      height: size.height * 0.065,
      width: size.width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: whitecolor,
              size: 16,
            ),
            SizedBox(width: size.width * 0.02),
            Text(
              title,
              style: GoogleFonts.varelaRound(
                  fontSize: 17, color: whitecolor, fontWeight: FontWeight.w600),
            )
          ]),
    );
  }
}
