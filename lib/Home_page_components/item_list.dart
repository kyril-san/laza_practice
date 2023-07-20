// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: size.width * 0.43,
        height: size.height * 0.25,
        decoration: BoxDecoration(
            color: greycolor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage('images/backimage.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          Positioned(
              right: 0,
              child: Image.asset(
                'images/Heart.png',
                scale: 1.5,
              ))
        ]),
      ),
      Padding(
        padding: EdgeInsets.only(top: size.height * 0.005),
        child: Text('Nike Sportswear Club\nFlecce'),
      ),
      Padding(
        padding: EdgeInsets.only(top: size.height * 0.005),
        child: Text('\$499'),
      )
    ]);
  }
}
