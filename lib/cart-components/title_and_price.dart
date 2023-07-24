// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:laza_practice/ApisandUserdata/UserData/products_model.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/General-constants/global_button.dart';
import 'package:laza_practice/Review-Components/reviews.dart';
import 'package:laza_practice/cart-components/more_image_list.dart';
import 'package:laza_practice/cart-components/size_guide_list.dart';

class TitleandPrice extends StatefulWidget {
  final ProductsModelclass products;
  const TitleandPrice({
    super.key,
    required this.products,
  });

  @override
  State<TitleandPrice> createState() => _TitleandPriceState();
}

class _TitleandPriceState extends State<TitleandPrice> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Positioned(
      top: size.height * 0.5,
      child: Container(
        width: size.width,
        height: size.height * 0.49,
        decoration: BoxDecoration(color: whitecolor),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  widget.products.title!,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                subtitle: Text(
                  widget.products.brand!,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                trailing: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'price\n',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '\$${widget.products.price}',
                      style: Theme.of(context).textTheme.displayMedium,
                    )
                  ]),
                ),
              ),
              MoreImageList(
                images: widget.products.images!,
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'size',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      'size Guide',
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.01),
              SizeGuideList(),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Text('Description',
                    style: Theme.of(context).textTheme.displayMedium),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: RichText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    text: TextSpan(children: [
                      TextSpan(
                        text: widget.products.description,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: 'Read More...',
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ])),
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Reviews',
                        style: Theme.of(context).textTheme.displayMedium),
                    Text('View All',
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
              Reviews(
                products: widget.products,
              ),
              GlobalButton(
                title: 'Add to Cart',
                ontap: () {},
              ),
              SizedBox(height: size.height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
