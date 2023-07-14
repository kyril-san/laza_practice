// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/globa_label_and_save_button.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_label_and_text.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {}, color: blackcolor),
        centerTitle: true,
        title:
            Text('Address', style: Theme.of(context).textTheme.headlineMedium),
        toolbarHeight: size.height * 0.15,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: SingleChildScrollView(
            clipBehavior: Clip.antiAlias,
            reverse: true,
            physics: BouncingScrollPhysics(),
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Column(
                children: [
                  LabelAndTextField(title: 'Name', hintext: 'Muna Mike'),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    children: [
                      SizedBox(
                          width: size.width * 0.5,
                          child: LabelAndTextField(
                              title: 'Country', hintext: 'Niger')),
                      SizedBox(
                          width: size.width * 0.5,
                          child: LabelAndTextField(
                              title: 'Country', hintext: 'Niger')),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  LabelAndTextField(
                      title: 'Phone Number', hintext: r'+880 1453-987533'),
                  SizedBox(height: size.height * 0.02),
                  LabelAndTextField(
                      title: 'Address', hintext: r'Chhatak, Sunamgonj 12/8AB'),
                  GlobalLabelandSaveButton(title: 'Save as primary Address'),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: GlobalButton(title: 'Save Address'),
    );
  }
}
