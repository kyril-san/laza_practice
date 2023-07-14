import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laza_practice/General-constants/const.dart';

class OneValueInputField extends StatelessWidget {
  const OneValueInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width * 0.21,
      child: TextFormField(
        showCursor: false,
        style: Theme.of(context).textTheme.displayMedium,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: greycolor.withOpacity(0.4)),
            ),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: greycolor))),
      ),
    );
  }
}
