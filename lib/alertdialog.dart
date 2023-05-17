import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
  return Scaffold(
   body:Center(
     child: CupertinoButton(
       child:Text("Show alert dialog"),
       onPressed: () {
         showCupertinoDialog(context: context, builder: (BuildContext context) {
           return CupertinoAlertDialog(
             title:Text("alert dialog tile"),
             content: Text("this is the content"),
             actions: [
               CupertinoDialogAction(child: Text("Cancel"),onPressed: (){
                 Navigator.of(context).pop();
               },),
               CupertinoDialogAction(child: Text("OKAY"),onPressed: (){
                 Navigator.of(context).pop();
               },)
             ],
           );
         });
       },
     ),
   )
  );
 }

}