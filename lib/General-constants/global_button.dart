import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class GlobalButton extends StatelessWidget {
  final String title;
  final Function? ontap;
  const GlobalButton({
    super.key,
    required this.title,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Material(
      child: InkWell(
        onTap: () => ontap!(),
        child: Container(
            width: double.infinity,
            height: size.height * 0.08,
            decoration: BoxDecoration(color: primarycolor),
            child: Center(
              child:
                  Text(title, style: Theme.of(context).textTheme.headlineSmall),
            )),
      ),
    );
  }
}
