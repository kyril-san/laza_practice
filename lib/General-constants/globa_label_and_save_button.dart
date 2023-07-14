import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_practice/General-constants/const.dart';

class GlobalLabelandSaveButton extends StatelessWidget {
  final String title;
  const GlobalLabelandSaveButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
                fontSize: 15, fontWeight: FontWeight.w500, color: blackcolor),
          ),
          Icon(
            FontAwesomeIcons.toggleOn,
            color: greencolor,
            size: 30,
          )
        ],
      ),
    );
  }
}
