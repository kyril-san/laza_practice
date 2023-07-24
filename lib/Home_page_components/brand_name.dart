// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:laza_practice/ApisandUserdata/UserData/products_model.dart';
import 'package:laza_practice/General-constants/const.dart';

class BrandNames extends StatefulWidget {
  final String name;
  const BrandNames({
    super.key,
    required this.name,
  });

  @override
  State<BrandNames> createState() => _BrandNamesState();
}

class _BrandNamesState extends State<BrandNames> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.only(right: size.width * 0.03),
      height: size.height * 0.05,
      // width: size.width * 0.25,
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
            SizedBox(
              width: size.width * 0.02,
            ),
            Text(
              widget.name,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
