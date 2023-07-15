// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/Review-Components/reviews.dart';

class ListOfReviews extends StatelessWidget {
  const ListOfReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.sizeOf(context);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: ((context, index) {
        return Reviews();
      }),
    );
  }
}
