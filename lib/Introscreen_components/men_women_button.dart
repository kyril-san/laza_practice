// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class MenandWomenButton extends StatefulWidget {
  final String title;
  bool isclicked;
  MenandWomenButton({
    super.key,
    required this.title,
    this.isclicked = false,
  });

  @override
  State<MenandWomenButton> createState() => _MenandWomenButtonState();
}

class _MenandWomenButtonState extends State<MenandWomenButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.pushReplacementNamed(context, 'LGS');
        });
      },
      child: Container(
        width: size.width * 0.4,
        height: size.height * 0.075,
        decoration: BoxDecoration(
            color: widget.isclicked ? primarycolor : greycolor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          widget.title,
          style: widget.isclicked
              ? Theme.of(context).textTheme.headlineSmall
              : Theme.of(context).textTheme.titleLarge,
        )),
      ),
    );
  }
}
