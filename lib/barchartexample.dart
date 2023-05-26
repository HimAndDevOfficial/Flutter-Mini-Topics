// import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'chartwidget.dart';
//
// class BarChartExample extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//     final data = [
//     new ChartModel('A' ,50),
//     new ChartModel('B',100),
//     new ChartModel('C',200),
//     ];
//
//     final series =[
//       charts.Series<ChartModel,String>(
//         id: 'chart',
//         domainFn: (ChartModel sales,_) => sales.label,
//         measureFn: (ChartModel sales,_) => sales.value,
//         data:data,
//       )
//     ];
//
//     return Scaffold(
//       body: Center(
//         child:ChartWidget(series,animate: true),
//       ),
//     );
//
//   }
//
//
//
// }