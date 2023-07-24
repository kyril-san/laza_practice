// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/ApisandUserdata/UserData/products_model.dart';
import 'package:laza_practice/ApisandUserdata/apis/productsapi.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/Home_page_components/brand_name.dart';
import 'package:laza_practice/Home_page_components/item_list.dart';
import 'package:laza_practice/Screens/cart_screen.dart';
import 'package:laza_practice/Screens/nike_store.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Future<List<ProductsModelclass>> products;
  @override
  void initState() {
    super.initState();
    products = Products.productsapi();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
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
                          child: ClipOval(
                            child: Image.asset(
                              'images/menu.png',
                              color: blackcolor,
                            ),
                          )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => NikeStorePage()));
                    },
                    child: ClipOval(
                      child: Container(
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: greycolor.withOpacity(0.13)),
                          child: Image.asset(
                            'images/Bag.png',
                            color: blackcolor,
                          )),
                    ),
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
                      onChanged: (value) {
                        setState(() {
                          products = Products.productsapi(query: value);
                        });
                      },
                      style: Theme.of(context).textTheme.bodyLarge,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: Theme.of(context).textTheme.headlineMedium,
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
                  child: FutureBuilder(
                      future: products,
                      builder: (context, snap) {
                        final list = snap.data;
                        if (snap.hasData) {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: list!.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return BrandNames(
                                  name: list[index].brand!,
                                );
                              });
                        } else {
                          if (snap.hasError) {
                            return Center(
                              child: Text("${snap.error}"),
                            );
                          }
                        }
                        return Center(child: LinearProgressIndicator());
                      })),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrivals',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => NikeStorePage()));
                    }),
                    child: Text(
                      'View all',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Expanded(
                child: FutureBuilder(
                  future: products,
                  builder: ((context, snapshot) {
                    if (snapshot.hasData) {
                      final list = snapshot.data;
                      return GridView.builder(
                          itemCount: list!.length,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.6),
                          itemBuilder: (context, index) {
                            return Hero(
                              transitionOnUserGestures: true,
                              tag: list[index],
                              child: ItemsList(
                                products: list[index],
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => CartScreen(
                                                products: list[index],
                                              )));
                                },
                              ),
                            );
                          });
                    }
                    if (snapshot.hasError) {
                      return Center(
                        child: Text("${snapshot.error}"),
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
