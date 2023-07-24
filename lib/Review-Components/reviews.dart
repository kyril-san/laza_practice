// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza_practice/ApisandUserdata/UserData/products_model.dart';

class Reviews extends StatefulWidget {
  final ProductsModelclass? products;
  const Reviews({
    super.key,
    this.products,
  });

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Image.asset('images/profilepic2.png'),
          ),
          title: Text(
            'Jenny Wilson',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          subtitle: Row(
            children: [
              Icon(
                FontAwesomeIcons.clock,
                size: 16,
              ),
              SizedBox(width: size.width * 0.01),
              Text(
                '13, sept, 2022',
              )
            ],
          ),
          trailing: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '${widget.products!.rating!} ',
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: 'rating',
                        style: Theme.of(context).textTheme.bodySmall)
                  ],
                ),
              ),
              RatingBar.builder(
                  itemSize: 20,
                  itemCount: 5,
                  initialRating: widget.products!.rating!.toDouble(),
                  allowHalfRating: true,
                  itemBuilder: ((context, index) {
                    return Icon(
                      Icons.star,
                      color: Colors.orange,
                    );
                  }),
                  onRatingUpdate: (update) {
                    print(update);
                  })
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
            maxLines: 3,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        )
      ],
    );
  }
}
