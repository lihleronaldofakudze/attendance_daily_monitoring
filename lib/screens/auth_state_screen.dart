import 'package:attendance_daily_monitoring/models/CurrentUser.dart';
import 'package:attendance_daily_monitoring/screens/home_screen.dart';
import 'package:attendance_daily_monitoring/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthStateScreen extends StatelessWidget {
  const AuthStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<CurrentUser?>(context);

    if (currentUser == null) {
      return WelcomeScreen();
    } else {
      return HomeScreen();
    }
  }
}
