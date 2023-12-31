// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/ApisandUserdata/UserData/products_model.dart';
import 'package:laza_practice/General-constants/const.dart';

class ItemsList extends StatefulWidget {
  // final String title;
  final ProductsModelclass products;
  final Function ontap;
  const ItemsList({
    super.key,
    required this.products,
    required this.ontap,
  });

  @override
  State<ItemsList> createState() => _ItemsListState();
}

bool _clicked = false;

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () => widget.ontap(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: size.width * 0.43,
          height: size.height * 0.25,
          decoration: BoxDecoration(
              color: greycolor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: size.height * 0.25,
                child: Image(
                  image: NetworkImage(widget.products.thumbnail!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                right: 0,
                child: GestureDetector(
                  onTap: () => setState(() {
                    _clicked = !_clicked;
                  }),
                  child: _clicked
                      ? Image.asset(
                          'images/Heart.png',
                          scale: 1.5,
                          color: redcolor,
                        )
                      : Image.asset(
                          'images/Heart.png',
                          scale: 1.5,
                        ),
                ))
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.005),
          child: Text(
            '${widget.products.title}',
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.clip,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.005),
          child: Text('\$${widget.products.price}'),
        )
      ]),
    );
  }
}
