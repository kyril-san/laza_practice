import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_practice/General-constants/const.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      height: size.height * 0.075,
      child: OutlinedButton(
          style: ButtonStyle(
              side: MaterialStatePropertyAll(BorderSide(color: primarycolor)),
              backgroundColor:
                  MaterialStatePropertyAll(greycolor.withOpacity(0.09))),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.squarePlus,
                color: primarycolor,
                size: 17,
              ),
              SizedBox(width: size.width * 0.01),
              Text('Add new card',
                  style: GoogleFonts.inter(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: primarycolor))
            ],
          )),
    );
  }
}
