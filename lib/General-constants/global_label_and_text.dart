import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class LabelAndTextField extends StatelessWidget {
  final String title, hintext;
  final int lines;
  const LabelAndTextField({
    super.key,
    required this.title,
    this.lines = 1,
    required this.hintext,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: size.height * 0.01),
          TextFormField(
            maxLines: lines,
            decoration: InputDecoration(
                hintText: hintext,
                hintStyle: Theme.of(context).textTheme.bodyMedium,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greycolor.withOpacity(0.1))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greycolor.withOpacity(0.1))),
                fillColor: greycolor.withOpacity(0.1),
                filled: true),
          ),
        ],
      ),
    );
  }
}
