import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterminitopics/model/datamodel.dart';
import 'package:http/http.dart' as http;

//used https://crudcrud.com/ crudcrud for dummy url
class UserApi {
  static Future<List<DataModel>> fetchUsers() async {
    final response = await http.get(Uri.parse("https://crudcrud.com/api/83d1427a9b0747b88337da53eca30fb9/unicorns"));

    if(response.statusCode == 200) {
      final jsonData  =  json.decode(response.body) as List<dynamic>;
      final users = jsonData.map((json) => DataModel.fromJson(json)).toList();
      return users;
    }
    else {
      throw Exception("Failed to fetch user, something went wrong"+response.statusCode.toString());
    }
  }

  // static Future<void> postData() async {
  //
  //   final url =Uri.parse("https://crudcrud.com/api/2b4bbfaaa4c34d7491ce50faef3193d7/unicorns");
  //
  //   final headers =<String,String> {
  //     'Content-Type' :'application/json'
  //   };
  //   final body = jsonEncode(<String,dynamic>{
  //     'name':'XYZ',
  //     'email':'xyz@gmail.com'
  //   });
  //
  //   final response = await http.post(url,headers: headers,body:body);
  //   if(response.statusCode == 200) {
  //     print(response.body.toString());
  //     print("post request was successful");
  //   }
  //   else {
  //     throw Exception("Failed to post user, something went wrong"+response.statusCode.toString());
  //   }
  // }
}

