// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SizeGuideList extends StatelessWidget {
  const SizeGuideList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return SizedBox(
      height: size.height * 0.08,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          padding: EdgeInsets.only(left: size.width * 0.01),
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              width: size.width * 0.17,
              margin: EdgeInsets.only(left: size.width * 0.02),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.15)),
              child: Center(
                child:
                    Text('s', style: Theme.of(context).textTheme.displayMedium),
              ),
            );
          }),
    );
  }
}
