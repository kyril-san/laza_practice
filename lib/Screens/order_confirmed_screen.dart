// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/Order-Confirmation-components/go_to_orders_button.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(leading: BackButton(onPressed: () {}, color: blackcolor)),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/backgroundconfirmedimage.png'),
                fit: BoxFit.contain,
                alignment: Alignment.center),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Image(
                image: AssetImage('images/Confirmedorder.png'),
              ),
              SizedBox(height: size.height * 0.05),
              Text('Order Confirmed',
                  style: Theme.of(context).textTheme.headlineMedium),
              Text(
                  'Your order has been confirmed, we will send\nyour confirmation email shortly',
                  textAlign: TextAlign.center),
              Spacer(),
              GotoOrdersButton(),
              SizedBox(height: size.height * 0.04),
              GlobalButton(title: 'Continue shopping')
            ],
          ),
        ),
      ),
    );
  }
}
