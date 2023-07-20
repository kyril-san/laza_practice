// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/Home_page_components/drawer_list_tiles.dart';

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
            child: Container(
                margin: EdgeInsets.only(left: size.width * 0.03),
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
            style: Theme.of(context).textTheme.headlineMedium,
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
        SizedBox(height: size.height * 0.01),
        DrawerListTiles(
          title: 'DarkMode',
          icon1: Icons.wb_sunny_outlined,
          icon2: Icons.toggle_off_outlined,
        ),
        DrawerListTiles(
          title: 'Account Information',
          icon1: Icons.info_outline,
        ),
        DrawerListTiles(
          title: 'Password',
          icon1: Icons.lock_outline,
        ),
        DrawerListTiles(
          title: 'order',
          icon1: Icons.shopping_bag_outlined,
        ),
        DrawerListTiles(
          title: 'My Cards',
          icon1: Icons.wallet,
        ),
        DrawerListTiles(
          title: 'Wishlist',
          icon1: Icons.favorite_outline,
        ),
        DrawerListTiles(
          title: 'settings',
          icon1: Icons.settings_outlined,
        ),
        Spacer(),
        ListTile(
          horizontalTitleGap: 1,
          leading: Icon(
            Icons.logout_outlined,
            color: redcolor,
          ),
          title: Text(
            'Logout',
            style: GoogleFonts.inter(
                color: redcolor, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        Spacer()
      ],
    );
  }
}
