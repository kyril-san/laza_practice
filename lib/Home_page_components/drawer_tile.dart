// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Builder(
          builder: (context) => InkWell(
            onTap: () {
              Scaffold.of(context).closeDrawer();
            },
            child: Ink(
                height: size.height * 0.05,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: greycolor.withOpacity(0.13)),
                child: Transform.rotate(
                  angle: pi / 2,
                  child: Image.asset(
                    'images/menu.png',
                    color: Colors.black,
                  ),
                )),
          ),
        ),
        ListTile(
          leading: CircleAvatar(child: Image.asset('images/profilepic.png')),
          title: Text(
            'Mrh Raju',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          subtitle: Row(
            children: [
              Text(
                'Verified Profile',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Icon(
                Icons.verified,
                size: 12,
                color: greencolor,
              )
            ],
          ),
          trailing: Container(
            width: size.width * 0.2,
            height: size.height * 0.04,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: greycolor.withOpacity(0.1)),
            child: Center(
              child: Text(
                '3 orders',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
