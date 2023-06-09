import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterminitopics/model/datamodel.dart';
import 'package:http/http.dart' as http;

//used https://crudcrud.com/ crudcrud for dummy url
class UserApi {
  static Future<List<DataModel>> fetchUsers() async {
    final response = await http.get(Uri.parse("https://crudcrud.com/api/65d589a04ed04436a2b6b62468658e1d/usersdatalist"));

    if(response.statusCode == 200) {
      final jsonData  =  json.decode(response.body) as List<dynamic>;
      final users = jsonData.map((json) => DataModel.fromJson(json)).toList();
      return users;
    }
    else {
      throw Exception("Failed to fetch user, something went wrong"+response.statusCode.toString());
    }
  }

  static Future<String> postData(username,email,password) async {

    final url =Uri.parse("https://crudcrud.com/api/65d589a04ed04436a2b6b62468658e1d/usersdatalist");

    final headers =<String,String> {
      'Content-Type' :'application/json'
    };
    final body = jsonEncode(<String,dynamic>{
      "username":username,
      "email":email,
      "password":password
    });

    final response = await http.post(url,headers: headers,body:body);
    if(response.statusCode == 201) {
      print(response.body.toString());
      return "success";

      print("post request was successful");
    }
    else {
      throw Exception("Failed to post user, something went wrong"+response.statusCode.toString());
    }
  }
}

