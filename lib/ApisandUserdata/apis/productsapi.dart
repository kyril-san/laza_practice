// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:laza_practice/ApisandUserdata/UserData/products_model.dart';
import 'package:laza_practice/ApisandUserdata/const_url.dart';
import 'package:http/http.dart' as http;

class Products {
  static Future<List<ProductsModelclass>> productsapi({String? query}) async {
    final url = Uri.https(ConstUrl.basedummyjson, '/products/');

    final res = await http.get(url);
    if (res.statusCode == 200) {
      final body = (jsonDecode(res.body));
      List<ProductsModelclass> list = (body['products'] as List<dynamic>)
          .map((e) => ProductsModelclass.fromJson(e))
          .toList();
      if (query != null) {
        list = list
            .where((element) =>
                element.brand!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
      return list;
    } else {
      debugPrint(
          'failed to load error ${res.reasonPhrase} : ${res.statusCode}');
    }
    throw Exception();
  }
}
