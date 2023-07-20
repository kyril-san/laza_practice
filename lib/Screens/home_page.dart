// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/Home_page_components/brand_name.dart';
import 'package:laza_practice/Home_page_components/drawer_tile.dart';
import 'package:laza_practice/Home_page_components/item_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        drawer: Drawer(
          child: DrawerTile(),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.03,
                right: size.width * 0.03,
                top: size.height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) => InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Ink(
                            height: size.height * 0.05,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: greycolor.withOpacity(0.13)),
                            child: Image.asset(
                              'images/menu.png',
                              color: blackcolor,
                            )),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Ink(
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: greycolor.withOpacity(0.13)),
                          child: Image.asset(
                            'images/Bag.png',
                            color: blackcolor,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Text(
                  'Hello',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  'Welcome to Laza.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: size.height * 0.05,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: greycolor.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        style: Theme.of(context).textTheme.bodyLarge,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle:
                                Theme.of(context).textTheme.headlineMedium,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    Container(
                      width: size.width * 0.1,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 151, 117, 250)),
                      child: Icon(
                        Icons.mic_none,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose Brand',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      'View all',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.01),
                SizedBox(
                    height: size.height * 0.05,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return BrandNames();
                        })),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arrivals',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      'View all',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Expanded(
                  child: GridView.builder(
                      itemCount: 7,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.6),
                      itemBuilder: (context, index) {
                        return ItemsList();
                      }),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('images/heart1.svg'), label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('images/bag1.svg'), label: 'Cart'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('images/Vector.svg'), label: 'Wallet'),
          ],
        ));
  }
}