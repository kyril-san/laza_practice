// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/General-constants/global_label_and_text.dart';
import 'package:laza_practice/General-constants/global_large_text.dart';

class AddReviewPage extends StatefulWidget {
  const AddReviewPage({super.key});

  @override
  State<AddReviewPage> createState() => _AddReviewPageState();
}

class _AddReviewPageState extends State<AddReviewPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            color: blackcolor),
        centerTitle: true,
        title: GlobalLargeText(title: 'Add Review'),
        toolbarHeight: size.height * 0.15,
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: SafeArea(
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
            // SizedBox(height: size.height * 0.27),
            GlobalButton(
              title: 'Submit Review',
              ontap: () {},
            ),
            // Spacer()
          ],
        )),
      ),
    );
  }
}
