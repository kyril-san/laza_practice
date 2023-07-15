// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_label_and_text.dart';

class MasterCard extends StatelessWidget {
  const MasterCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.03),
          LabelAndTextField(title: 'Card Owner', hintext: 'Muna reda'),
          SizedBox(height: size.height * 0.01),
          LabelAndTextField(
              title: 'Card Number', hintext: '5254 7634 8734 7690'),
          SizedBox(height: size.height * 0.01),
          Row(
            children: [
              SizedBox(
                  width: size.width * 0.5,
                  child: LabelAndTextField(title: 'EXP', hintext: '24/24')),
              SizedBox(
                  width: size.width * 0.5,
                  child: LabelAndTextField(title: 'CVV', hintext: '7796')),
            ],
          ),
          SizedBox(height: size.height * 0.357),
          GlobalButton(title: 'Add Card')
        ],
      ),
    );
  }
}
