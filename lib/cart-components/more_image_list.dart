import 'package:flutter/material.dart';

class MoreImageList extends StatelessWidget {
  const MoreImageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return SizedBox(
      height: size.height * 0.085,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 4,
          padding: EdgeInsets.only(left: size.width * 0.01),
          itemBuilder: (context, index) {
            return Container(
              width: size.width * 0.215,
              margin: EdgeInsets.only(left: size.width * 0.02),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.15)),
              child: Image.asset(
                'images/listimage.png',
                fit: BoxFit.contain,
              ),
            );
          }),
    );
  }
}
