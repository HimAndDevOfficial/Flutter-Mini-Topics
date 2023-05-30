import 'package:flutter/material.dart';

class Switchexample extends StatefulWidget {

  @override
  _SwitchexampleState createState() => _SwitchexampleState();

}

class _SwitchexampleState extends State<Switchexample> {
  bool _switchValue = false;
  bool isChecked =false;

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
          Text("switch case Value $_switchValue"),
          SizedBox(height:20),
          Checkbox(value: isChecked,
              onChanged:(value) {

            setState(() {
              isChecked=value ?? false;
            });
          }),
          SizedBox(height:20),
          Text("Check Box Value $isChecked"),
          SizedBox(height:20),
          Expanded(child:GridView.count(
            crossAxisCount: 2, //number of columns in grid
            crossAxisSpacing: 10.0, //spacing between column
            mainAxisSpacing: 10.0, //spacing between rows
            padding: EdgeInsets.all(10.0),
            children: [
              Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    "Item 1",
                    style: TextStyle(color:Colors.white,fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Item 2",
                    style: TextStyle(color:Colors.white,fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    "Item 3",
                    style: TextStyle(color:Colors.white,fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "Item 4",
                    style: TextStyle(color:Colors.white,fontSize: 20.0),
                  ),
                ),
              )
            ],
          ),)

        ],
      )
    );
  }

}
