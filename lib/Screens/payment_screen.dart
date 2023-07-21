// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/globa_label_and_save_button.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_label_and_text.dart';
import 'package:laza_practice/Payment-Components/add_new_card.dart';
import 'package:laza_practice/Payment-Components/card_details.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: BackButton(onPressed: () {}, color: blackcolor),
        centerTitle: true,
        title:
            Text('Payment', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: SingleChildScrollView(
            // reverse: true,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: size.height * 0.2,
                  child: ListView.separated(
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CardDetails();
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: size.width * 0.02);
                      },
                      itemCount: 3),
                ),
                SizedBox(height: size.height * 0.02),
                AddNewCard(),
                SizedBox(height: size.height * 0.02),
                LabelAndTextField(title: 'Card Owner', hintext: 'Muna ride'),
                SizedBox(height: size.height * 0.02),
                LabelAndTextField(
                    title: 'Card Number', hintext: '5254 7634 8734 7690'),
                SizedBox(height: size.height * 0.02),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.5,
                      child: LabelAndTextField(title: 'EXP', hintext: '24/24'),
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                      child: LabelAndTextField(title: 'CVV', hintext: '7986'),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.01),
                GlobalLabelandSaveButton(title: 'Save Card Info')
              ],
            ),
          ),
        ),
      ),
      bottomSheet: GlobalButton(
        title: 'Save Card',
        ontap: () {},
      ),
    );
  }
}
