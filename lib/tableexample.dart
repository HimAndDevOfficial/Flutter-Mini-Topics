import 'package:flutter/material.dart';

import 'api/UserApi.dart';
import 'model/datamodel.dart';

class TableExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: Text("Table Screen"),),
        body:Center (
          child:Table(
            border: TableBorder.all(),
            columnWidths: const <int,TableColumnWidth>{
              0:FixedColumnWidth(100.0),
              1:FlexColumnWidth(),
              2:FixedColumnWidth(100.0)
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children:<TableRow> [
              TableRow(
                children: <Widget>[
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.grey[300],
                      child: Text("Item 1"),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.grey[300],
                      child: Text("Value 1"),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.grey[300],
                      child: Text("Action 1"),
                    ),
                  )
                ]
              ),
              TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        color: Colors.grey[300],
                        child: Text("Item 2"),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        color: Colors.grey[300],
                        child: Text("Value 2"),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        color: Colors.grey[300],
                        child: Text("Action 2"),
                      ),
                    )
                  ]
              )
            ],
          )
        )
    );
  }

}