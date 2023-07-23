// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:laza_practice/ApisandUserdata/UserData/Login_response_model.dart';
import 'package:laza_practice/ApisandUserdata/UserData/login_model_class.dart';
import 'package:laza_practice/ApisandUserdata/const_url.dart';
import 'package:http/http.dart' as http;

class Loginclass {
  static Future<LoginResponseModel> loginapi(LoginModelclass data) async {
    final url = Uri.https(ConstUrl.baseSignupUrl, '/login');
    final headers = ({"Content-Type": "application/json"});
    final body = data.tojson();

    try {
      final res =
          await http.post(url, headers: headers, body: jsonEncode(body));
      if (res.statusCode == 200) {
        // final List<LoginResponseModel> list = (body as List<dynamic>)
        //     .map((e) => LoginResponseModel.fromJson(e))
        //     .toList();
        return LoginResponseModel.fromJson(jsonDecode(res.body));
      } else if (res.statusCode == 500) {
        return LoginResponseModel.fromJson(jsonDecode(res.body));
      } else {
        debugPrint('${res.statusCode} :  ${res.reasonPhrase}');
        throw Exception('error');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception('error');
  }
}
