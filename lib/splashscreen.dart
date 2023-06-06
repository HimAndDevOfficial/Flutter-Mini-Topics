import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterminitopics/api/UserApi.dart';
import 'package:flutterminitopics/expandedlayout.dart';

import 'networkingscreen.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() async{
    await Future.delayed(Duration(seconds:3));

    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context)=> ExampleExpandedLayout()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Post Example"),
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size:200
              ),
              SizedBox(height: 20,),
              Text("Flutter Mini Topics",
              style: TextStyle(
                fontSize: 24,fontWeight: FontWeight.bold
              ),
              )
            ],
          )
        )
    );
  }

}
