import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class MenandWomenButton extends StatelessWidget {
  final String title;
  final bool isclicked;
  const MenandWomenButton({
    super.key,
    required this.title,
    required this.isclicked,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * 0.4,
      height: size.height * 0.075,
      decoration: BoxDecoration(
          color: isclicked ? primarycolor : greycolor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        title,
        style: isclicked
            ? Theme.of(context).textTheme.headlineSmall
            : Theme.of(context).textTheme.titleLarge,
      )),
    );
  }
}
