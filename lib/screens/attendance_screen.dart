import 'package:attendance_daily_monitoring/widgets/attandance_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        leading: Container(),
        title: Text('K Anilbabu'),
        backgroundColor: Colors.black,
        elevation: 0.0,
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reports');
              },
              child: Row(
                children: [
                  Text('Reports'),
                  SizedBox(
                    width: 10,
                  ),
                  FaIcon(FontAwesomeIcons.fileInvoice)
                ],
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.brown,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                FaIcon(
                  FontAwesomeIcons.calendarWeek,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'September - 2021',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(child: AttendanceListWidget())
        ],
      ),
    );
  }
}
