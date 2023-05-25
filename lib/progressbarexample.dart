import 'package:flutter/material.dart';

class MyProgressBarExample extends StatefulWidget {

  @override
  _MyProgressBarExampleState createState() => _MyProgressBarExampleState();

}

class _MyProgressBarExampleState extends State<MyProgressBarExample> {

  double _progressValue = 0.0;

  double _seekBarValue = 0.0;
  void simulateProgress() {
    setState(() {
      _progressValue+=0.1;
      if(_progressValue>=1.0) {
        _progressValue=0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Bar Example"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: simulateProgress, child: Text("Start Progress")),
            SizedBox(height: 20.0,),
            //CircularProgressBarIndicator
            LinearProgressIndicator(
              value: _progressValue,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: simulateProgress, child: Text("SeekBar Example")),
            Slider(value: _seekBarValue,
                min: 0.0,
                max: 100.0,
                onChanged: (value){
              setState(() {
                _seekBarValue=value;
              });
            }),
            Text("Value :${_seekBarValue.toStringAsFixed(0)}",style: TextStyle(fontSize: 16.0),)
          ],
        ),
      )
    );
  }

}
