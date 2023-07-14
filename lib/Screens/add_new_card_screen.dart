// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza_practice/General-constants/const.dart';
import 'package:laza_practice/add-new-card-Components/master_card.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen>
    with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () {}, color: blackcolor),
          centerTitle: true,
          title: Text('Add New Card',
              style: Theme.of(context).textTheme.headlineMedium),
        ),
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                  controller: _controller,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red.withOpacity(0.2),
                      border: Border.all(color: Colors.orange)),
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                  labelPadding: EdgeInsets.symmetric(vertical: 10),
                  tabs: [
                    Icon(
                      FontAwesomeIcons.ccMastercard,
                      color: Colors.orange,
                    ),
                    Icon(
                      FontAwesomeIcons.paypal,
                      color: Colors.blue,
                    ),
                    Icon(FontAwesomeIcons.buildingColumns, color: blackcolor)
                  ]),
              Expanded(
                child: TabBarView(
                    controller: _controller,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Center(child: MasterCard()),
                      Center(child: Text('screen 2')),
                      Center(child: Text('screen 3'))
                    ]),
              )
            ],
          ),
        ));
  }
}
