// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:laza_practice/ApisandUserdata/UserData/products_model.dart';
import 'package:laza_practice/ApisandUserdata/apis/productsapi.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/Home_page_components/item_list.dart';
import 'package:laza_practice/Screens/cart_screen.dart';
import 'package:laza_practice/Screens/order_confirmed_screen.dart';

class NikeStorePage extends StatefulWidget {
  const NikeStorePage({super.key});

  @override
  State<NikeStorePage> createState() => _NikeStorePageState();
}

class _NikeStorePageState extends State<NikeStorePage> {
  late Future<List<ProductsModelclass>> products;
  @override
  void initState() {
    super.initState();
    products = Products.productsapi();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                  Image.asset('images/Nikelogo.png', scale: 0.5),
                  Image.asset('images/Bag.png')
                ],
              ),
              ListTile(
                title: Text(
                  '365 items',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                subtitle: Text(
                  'Avaliable in stock',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                trailing: Container(
                  width: size.width * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: greycolor.withOpacity(0.2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.sort,
                        color: Colors.black,
                      ),
                      Text(
                        'Sort',
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: FutureBuilder(
                      future: products,
                      builder: (context, snap) {
                        final products = snap.data;
                        if (snap.hasError) {
                          return Center(
                            child: Text('Error : ${snap.error}'),
                          );
                        } else if (snap.hasData) {
                          return GridView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: products!.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.6,
                              ),
                              itemBuilder: (context, index) {
                                return ItemsList(
                                  products: products[index],
                                  ontap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => CartScreen(
                                                  products: products[index])));
                                    });
                                  },
                                );
                              });
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
