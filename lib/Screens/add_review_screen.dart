// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_label_and_text.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';

class AddReviewPage extends StatelessWidget {
  const AddReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {}, color: blackcolor),
        centerTitle: true,
        title: GlobalLargeText(title: 'Add Review'),
        toolbarHeight: size.height * 0.15,
      ),
      body: SafeArea(
          child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightForFinite(height: size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelAndTextField(hintext: 'Type your name', title: 'Name'),
                SizedBox(height: size.height * 0.02),
                LabelAndTextField(
                    title: 'How was your Experience?',
                    hintext: 'Describe your experience',
                    lines: 8),
                SizedBox(height: size.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: Text('Star',
                      style: Theme.of(context).textTheme.headlineMedium),
                ),
                Slider(
                    value: 2.5,
                    onChanged: null,
                    min: 0.0,
                    max: 5.0,
                    activeColor: primarycolor),
                Spacer(),
                GlobalButton(title: 'Submit Review'),
                Spacer()
              ],
            ),
          ),
        ),
      )),
    );
  }
}
