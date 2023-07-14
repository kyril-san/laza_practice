import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class GlobalButton extends StatelessWidget {
  final String title;
  const GlobalButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
        width: double.infinity,
        height: size.height * 0.08,
        decoration: BoxDecoration(color: primarycolor),
        child: Center(
          child: Text(title, style: Theme.of(context).textTheme.headlineSmall),
        ));
  }
}
