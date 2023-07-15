// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/cart-components/title_and_price.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('images/backimage.png'),
              fit: BoxFit.contain),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(),
                Padding(
                  padding: EdgeInsets.only(right: size.width * 0.03),
                  child: Image(image: AssetImage('images/Bag.png')),
                )
              ],
            ),
            Positioned(
              top: size.height * 0.45,
              left: size.width * 0.45,
              child: Image.asset('images/Nike.png'),
            ),
            TitleandPrice(),
          ],
        ),
      )),
    );
  }
}
