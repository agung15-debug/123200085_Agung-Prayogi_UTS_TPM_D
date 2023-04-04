import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'dashboard.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  var timeZone = ['WIB', 'WITA', 'WIT'];
  var selectedTimeZone = 'WIB';
  var time = DateTime.now();
  var timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => updateTime());
    initializeDateFormatting();
  }

  @override
  void dispose() {
    timer.cancel();
    timer;
    super.dispose();
  }

  void updateTime() {
    setState(() {
      time = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calendar'),
          centerTitle: true,
        ),
        drawer: NavigationDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value: selectedTimeZone,
                items: timeZone.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  if (mounted) {
                    setState(() {
                      selectedTimeZone = value!;
                    });
                  }
                },
              ),
              SizedBox(height: 20),
              Text(
                'Waktu di $selectedTimeZone',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                '${DateFormat('EEEE', 'id').format(time.add(Duration(hours: _getTimeDifference(selectedTimeZone))))}, ${DateFormat('d MMMM y', 'id').format(time.add(Duration(hours: _getTimeDifference(selectedTimeZone))))}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                DateFormat('HH:mm:ss')
                    .format(time.add(
                        Duration(hours: _getTimeDifference(selectedTimeZone))))
                    .toString(),
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Digital-7'),
              ),
            ],
          ),
        ));
  }

  int _getTimeDifference(String timeZone) {
    switch (timeZone) {
      case 'WIB':
        return 0;
      case 'WITA':
        return 1;
      case 'WIT':
        return 2;
      default:
        return 0;
    }
  }
}
