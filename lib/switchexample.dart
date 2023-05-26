import 'package:flutter/material.dart';

class Switchexample extends StatefulWidget {

  @override
  _SwitchexampleState createState() => _SwitchexampleState();

}

class _SwitchexampleState extends State<Switchexample> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Example"),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(value:_switchValue, onChanged: (bool value) {
            setState(() {
              _switchValue=value;
            });
          } ,),
          SizedBox(height:20),
          Text("switch case Value $_switchValue")
        ],
      )
    );
  }

}
