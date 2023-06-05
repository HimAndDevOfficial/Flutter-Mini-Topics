import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterminitopics/api/UserApi.dart';

import 'networkingscreen.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String username="";
  String email="";
  String password="";

  Future<void> _submitForm() async {
    if(_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      String result = await UserApi.postData(username,email,password);

      if(result =="success") {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
            NetworkingScreen()));
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Post Example"),
        ),
        body:Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                validator:(value) {
                  if(value==null || value.isEmpty) {
                    return "Please enter a username";
                  }
                  return null;
                },
                onSaved: (value){
                  username=value!!;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator:(value) {
                  if(value==null || value.isEmpty) {
                    return "Please enter a email";
                  }
                  return null;
                },
                onSaved: (value){
                  email=value!!;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                validator:(value) {
                  if(value==null || value.isEmpty) {
                    return "Please enter a password";
                  }
                  return null;
                },
                onSaved: (value){
                  password=value!!;
                },
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: _submitForm, child: Text("Register"))
            ],
          ),

        )
    );
  }

}
