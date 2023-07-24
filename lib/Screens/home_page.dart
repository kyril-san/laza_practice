// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, curly_braces_in_flow_control_structures, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_practice/ApisandUserdata/UserData/login_model_class.dart';
import 'package:laza_practice/ApisandUserdata/UserData/products_model.dart';
import 'package:laza_practice/ApisandUserdata/apis/productsapi.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/Home_page_components/brand_name.dart';
import 'package:laza_practice/Home_page_components/drawer_tile.dart';
import 'package:laza_practice/Home_page_components/item_list.dart';
import 'package:laza_practice/Screens/main_page.dart';
import 'package:laza_practice/Screens/nike_store.dart';
import 'package:laza_practice/Screens/wish_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ApisandUserdata/UserData/Login_response_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

int _currentindex = 0;
const pages = [
  MainPage(),
  WishListPage(),
  Center(child: Text('favourite page')),
  Center(child: Text('Wallet page')),
];
String name = '';
String src =
    'https://secure.gravatar.com/avatar/cbd701360661a18a5c78940acee7994c?s=560&d=https:%2F%2Fnews.microsoft.com%2Fwp-content%2Fthemes%2Fmicrosoft-news-center-2016%2Fassets%2Fimg%2Fdefault-avatar.png&r=g';

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getname();
  }

  Future getname() async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    var getstring = shared.getString('name');
    var getsrc = shared.getString('src');
    setState(() {
      name = getstring!;
      src = getsrc!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SafeArea(
          child: Drawer(
            elevation: 0,
            child: DrawerTile(title: name, src: src),
          ),
        ),
        body: pages[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
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
