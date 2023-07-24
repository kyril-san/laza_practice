import 'package:flutter/material.dart';

class MoreImageList extends StatefulWidget {
  final List images;
  const MoreImageList({
    super.key,
    required this.images,
  });

  @override
  State<MoreImageList> createState() => _MoreImageListState();
}

class _MoreImageListState extends State<MoreImageList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return SizedBox(
      height: size.height * 0.085,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: widget.images.length,
          padding: EdgeInsets.only(left: size.width * 0.01),
          itemBuilder: (context, index) {
            return Container(
                width: size.width * 0.215,
                margin: EdgeInsets.only(left: size.width * 0.05),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.15)),
                child: Image(
                  image: NetworkImage(widget.images[index]),
                ));
          }),
    );
  }
}
