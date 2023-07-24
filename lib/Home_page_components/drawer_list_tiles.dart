// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class DrawerListTiles extends StatelessWidget {
  final String title;
  final IconData icon1;
  final IconData? icon2;
  final Function ontap;
  const DrawerListTiles({
    super.key,
    required this.title,
    required this.icon1,
    this.icon2,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 1,
      leading: Icon(
        icon1,
        color: blackcolor,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      trailing: Icon(
        icon2,
        size: 48,
        color: blackcolor,
      ),
      onTap: () => ontap(),
    );
  }
}
