import 'package:attendance_daily_monitoring/models/Attendance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AttendanceListWidget extends StatelessWidget {
  const AttendanceListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _attendance = [
      Attendance(date: 'Sep', day: 'Wednesday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Thursday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Friday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Saturday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Sunday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Monday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Tuesday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Wednesday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Thursday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Friday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Saturday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Sunday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Monday', status: 'Present'),
      Attendance(date: 'Sep', day: 'Tuesday', status: 'Present'),
    ];
    return ListView.builder(
      itemCount: _attendance.length,
      itemBuilder: (context, index) {
        return Card(
          child: Row(
            children: [
              Container(
                child: Text(
                  '0${index + 1}\n${_attendance[index].date}',
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.symmetric(
                        vertical: BorderSide(color: Colors.brown))),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _attendance[index].day,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Text(
                        _attendance[index].status,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                      width: 40,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: FaIcon(
                        FontAwesomeIcons.check,
                        color: Colors.white,
                      )),
                  Container(
                      width: 40,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(10)),
                      child: FaIcon(
                        FontAwesomeIcons.times,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
