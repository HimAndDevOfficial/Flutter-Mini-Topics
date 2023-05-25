import 'package:flutter/material.dart';

class MyRadioButtonExample extends StatefulWidget {

  @override
  _MyRadioButtonExampleState createState() => _MyRadioButtonExampleState();

}

class _MyRadioButtonExampleState extends State<MyRadioButtonExample> {
  String selectedOption="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Example"),
      ),
      body:Column(
        children: [
          ListTile(
            title: const Text("Option 1"),
            leading: Radio(
              value: 'option1',
              groupValue: selectedOption,
              onChanged: (value){
                setState(() {
                  selectedOption=value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Option 2"),
            leading: Radio(
              value: 'option2',
              groupValue: selectedOption,
              onChanged: (value){
                setState(() {
                  selectedOption=value!;
                });
              },
            ),
          ),

          ListTile(
            title: const Text("Option 3"),
            leading: Radio(
              value: 'option3',
              groupValue: selectedOption,
              onChanged: (value){
                setState(() {
                  selectedOption=value!;
                });
              },
            ),
          ),

          Text("selectedValue="+selectedOption),
        ],
      )
    );
  }

}
