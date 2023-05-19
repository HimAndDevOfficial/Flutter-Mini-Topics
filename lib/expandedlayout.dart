import 'package:flutter/material.dart';
import 'package:flutterminitopics/stackexample.dart';
import 'package:flutterminitopics/tabbarexample.dart';

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
     )

    ],
   )
  );
 }

}