import 'package:flutter/material.dart';

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

          }, child: Text("Stack"),
         )
        ),
        Expanded(
            child:ElevatedButton(
             onPressed: () {

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

        },
        child:Text("Button 2")
       ),
      ),
     )

    ],
   )
  );
 }

}