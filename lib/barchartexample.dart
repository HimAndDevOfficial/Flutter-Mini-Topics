import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'chartwidget.dart';

class BarChartExample extends StatefulWidget {

  @override
  _BarChartExampleState createState() => _BarChartExampleState();

}

class _BarChartExampleState extends State<BarChartExample> {

  List<double> _chartData =[2,4,3,6,8,5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Bar Chart Example"),
      ),
      body:Padding(
        padding: EdgeInsets.all(16.0),
        child:BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 10,
            titlesData: FlTitlesData(
              show: true,
              leftTitles: SideTitles(
                showTitles: true,
                getTitles: (value) {
                  return value.toString();
                }
            )
            ),
            borderData: FlBorderData(
              show: false,
            ),
            barGroups: _chartData
              .asMap()
              .map((index, value) => MapEntry(index,
                BarChartGroupData(
                  x:index,
                  barRods: [
                    BarChartRodData(
                      y:value,
                      colors: [Colors.black],
                      width: 10,
                    )
                  ]
                )
            )
            )
              .values
              .toList(),
          )
        )
      )
    );

  }


}