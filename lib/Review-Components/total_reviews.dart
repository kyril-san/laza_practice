// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TotalReviews extends StatelessWidget {
  const TotalReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return ListTile(
      title: Text('245 Reviews'),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('4.8'),
          SizedBox(width: size.width * 0.01),
          RatingBar.builder(
              itemCount: 5,
              initialRating: 4.8,
              itemSize: 20,
              itemBuilder: ((context, index) {
                return Icon(
                  Icons.star,
                  color: Colors.orange,
                );
              }),
              onRatingUpdate: (rating) {
                print(rating);
              }),
        ],
      ),
      trailing: Container(
        width: size.width * 0.35,
        height: size.height * 0.045,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.deepOrange),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('images/reviewlogo.png')),
            SizedBox(width: size.width * 0.01),
            Text(
              'Add Review',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
