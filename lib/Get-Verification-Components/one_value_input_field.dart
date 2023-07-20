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
      width: size.width * 0.2,
      child: TextFormField(
        textAlign: TextAlign.center,
        showCursor: false,
        style: Theme.of(context).textTheme.displayMedium,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.04),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: greycolor.withOpacity(0.3)),
            ),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: greycolor))),
      ),
    );
  }
}
