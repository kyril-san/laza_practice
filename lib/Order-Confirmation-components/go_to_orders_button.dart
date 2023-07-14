import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class GotoOrdersButton extends StatelessWidget {
  const GotoOrdersButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: greycolor.withOpacity(0.2)),
      child: Center(
          child: Text(
        'Go to Orders',
        style: Theme.of(context).textTheme.titleLarge,
      )),
    );
  }
}
