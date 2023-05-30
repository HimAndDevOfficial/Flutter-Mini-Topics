import 'package:flutter/material.dart';
import 'package:flutterminitopics/animationexample.dart';
import 'package:flutterminitopics/progressbarexample.dart';
import 'package:flutterminitopics/radiobuttonexample.dart';
import 'package:flutterminitopics/stackexample.dart';
import 'package:flutterminitopics/switchexample.dart';
import 'package:flutterminitopics/tabbarexample.dart';

import 'barchartexample.dart';
import 'calenderexample.dart';
import 'expandedform.dart';

class ExampleExpandedLayout extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
  return Scaffold(
   body:Column(
    children: [
     Expanded(
      child:Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
        Expanded(
         child:ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                StackExample()));

          }, child: Text("Stack"),
         )
        ),
        Expanded(
            child:ElevatedButton(
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>
               ExampleForm()));

             }, child: Text("Forms"),
            )
        )
       ],
      )
     ),

     Expanded(
      child: Center(
       child:ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
              AlertDialog()));
        },
        child: Text("Alert Dialog")
       )
      ),
     ),

     Expanded(
      child: Align(
       alignment: Alignment.bottomRight,
       child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
          TabBarExample()));
        },
        child:Text("Tab Bar Example")
       ),
      ),
     ),
      Expanded(
        child: Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    AnimationExample()));
              },
              child:Text("Animation Example")
          ),
        ),
      ),

      Expanded(
        child: Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                MyProgressBarExample()));
              },
              child:Text("Progress Bar Example")
          ),
        ),
      ),

      Expanded(
        child: Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                Switchexample()));
              },
              child:Text("Switch/CheckBox/GridView Example")
          ),
        ),
      ),

      Expanded(
        child: Align(
          alignment: Alignment.bottomLeft,
          child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                MyRadioButtonExample()));
              },
              child:Text("Radio Button Example")
          ),
        ),
      ),

      Expanded(
        child: Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    BarChartExample()));
               },
              child:Text("Chart Example")
          ),
        ),
      ),
      Expanded(
        child: Align(
          alignment: Alignment.bottomLeft,
          child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    CalenderExample()));
              },
              child:Text("Calender Example")
          ),
        ),
      ),

    ],
   )
  );
 }

}