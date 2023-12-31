// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/Review-Components/list_of_reviews.dart';
import 'package:laza_practice/Review-Components/total_reviews.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              color: blackcolor),
          centerTitle: true,
          title: Text('Reviews',
              style: Theme.of(context).textTheme.headlineMedium),
        ),
        body: SafeArea(
            child: Column(
          children: [TotalReviews(), ListOfReviews()],
        )));
  }
}
