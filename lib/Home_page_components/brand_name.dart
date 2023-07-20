// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class BrandNames extends StatelessWidget {
  const BrandNames({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.only(right: size.width * 0.03),
      height: size.height * 0.05,
      width: size.width * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: greycolor.withOpacity(0.12)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.1,
              height: size.height * 0.04,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Image.asset(
                'images/Nikelogo.png',
                color: blackcolor,
              ),
            ),
            Text(
              'Nike',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
