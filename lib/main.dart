import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:attendance_daily_monitoring/screens/auth_state_screen.dart';
import 'package:attendance_daily_monitoring/screens/edit_profile_screen.dart';
import 'package:attendance_daily_monitoring/screens/number_screen.dart';
import 'package:attendance_daily_monitoring/screens/reports_screen.dart';
import 'package:attendance_daily_monitoring/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'models/CurrentUser.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<CurrentUser?>.value(
            value: AuthService().user, initialData: CurrentUser())
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => AnimatedSplashScreen(
                splash: Container(
                  height: double.infinity,
                  width: double.infinity,
                  padding: EdgeInsets.all(50),
                  color: Colors.brown.shade100,
                  child: Center(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/ATTENDANCE.png'),
                              fit: BoxFit.scaleDown)),
                    ),
                  ),
                ),
                nextScreen: AuthStateScreen(),
                splashIconSize: double.infinity,
              ),
          '/auth': (context) => AuthStateScreen(),
          '/number': (context) => NumberScreen(),
          '/reports': (context) => ReportsScreen(),
          '/edit_profile': (context) => EditProfileScreen(),
        },
        title: 'Attendance - Daily Monitoring',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.brown,
            textTheme:
                GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme)),
      ),
    );
  }
}
