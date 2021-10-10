import 'package:attendance_daily_monitoring/screens/attendance_screen.dart';
import 'package:attendance_daily_monitoring/screens/payments_screen.dart';
import 'package:attendance_daily_monitoring/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1;
  final _navs = [PaymentsScreen(), AttendanceScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navs[_currentIndex],
      backgroundColor: Colors.brown.shade100,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown.shade100,
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.wallet), label: 'Payments'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userClock), label: 'Attendance'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userAlt), label: 'Profile'),
        ],
      ),
    );
  }
}
