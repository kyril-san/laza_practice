// ignore_for_file: unused_import, depend_on_referenced_packages, avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:laza_practice/ApisandUserdata/UserData/signup_model_class.dart';
import 'package:laza_practice/ApisandUserdata/UserData/signup_response_model.dart';
import 'package:laza_practice/ApisandUserdata/const_url.dart';

class SignUp {
  static Future<SignupResponseModel> signupapi(SignupModelClass data) async {
    final url = Uri.https(ConstUrl.baseSignupUrl, "/register");
    final headers = ({"Content-Type": "application/json"});
    final body = data.toJson();
    debugPrint(jsonEncode(body));
    try {
      final res =
          await http.post(url, headers: headers, body: jsonEncode(body));
      if (res.statusCode == 200) {
        return SignupResponseModel.fromJson(jsonDecode(res.body));
      } else if (res.statusCode == 500) {
        return SignupResponseModel.fromJson(jsonDecode(res.body));
      } else {
        debugPrint('${res.statusCode}:${res.reasonPhrase}');
      }
    } catch (e) {
      print(e.toString());
    }
    throw Exception('Unable to connect to Server');
  }
}
