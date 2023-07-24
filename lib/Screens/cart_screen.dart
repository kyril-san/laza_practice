// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/ApisandUserdata/UserData/products_model.dart';
import 'package:laza_practice/cart-components/title_and_price.dart';

class CartScreen extends StatefulWidget {
  final ProductsModelclass products;
  const CartScreen({super.key, required this.products});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              SizedBox(
                height: size.height * 0.5,
                width: size.width,
                child: Image(
                  image: NetworkImage(widget.products.thumbnail!),
                  fit: BoxFit.contain,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.01, top: size.height * 0.02),
                    child: BackButton(
                      onPressed: () => setState(() {
                        Navigator.pop(context);
                      }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: size.width * 0.03, top: size.height * 0.02),
                    child: Image(image: AssetImage('images/Bag.png')),
                  )
                ],
              ),
              Positioned(
                top: size.height * 0.45,
                left: size.width * 0.45,
                child: Image.asset('images/Nike.png'),
              ),
              TitleandPrice(
                products: widget.products,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
