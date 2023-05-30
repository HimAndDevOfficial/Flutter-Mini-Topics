import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderExample extends StatefulWidget {

  @override
  _CalenderExampleState createState() => _CalenderExampleState();

}

class _CalenderExampleState extends State<CalenderExample> {
  CalendarFormat _calenderFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calender Example"),
      ),
      body:Column(
        children: [
          TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2020,1,1),
              lastDay: DateTime.utc(2024,1,1),
              calendarFormat: _calenderFormat,
              selectedDayPredicate: (day){
                return isSameDay(_selectedDay, day);
              },
            onDaySelected: (selectedDay,focusedDay) {
                setState(() {
                  _selectedDay= selectedDay;
                  _focusedDay=focusedDay;
                });
            },
            onFormatChanged: (format){
                setState(() {
                  _calenderFormat= format;
                });
            },
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Colors.blue,
                shape:BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color:Colors.orange,
                shape:BoxShape.circle,
              )
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              formatButtonShowsNext: false,
              formatButtonDecoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0),
              ),
              formatButtonTextStyle: TextStyle(
                color:Colors.white
              ),
              titleTextStyle:  TextStyle(
                  fontSize: 20.0,
                  fontWeight:FontWeight.bold,
              ),
            ),
          )
        ],
      )
    );
  }

}
