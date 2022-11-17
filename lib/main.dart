import 'package:flutter/material.dart';
import 'package:untitled2/screens/request_view_page.dart';
import 'package:untitled2/screens/take_attendance_page.dart';
import 'screens/login_page.dart';
import 'screens/dashboard_page.dart';
import 'screens/profile_page.dart';
import 'screens/reset_page.dart';
import 'screens/request_page.dart';
import 'screens/change_password_page.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/Dashboard': (context) => Dashboard(),
        '/request': (context) => Request_Reason(),
        '/reset': (context) => ResetPassword(),
        '/profile': (context) => Profile_page(),
        '/changepassword': (context) => ChangePassword(),
        '/takeAttendance': (context) => TakeAttendance(),
        '/requestView': (context) => RequestView(),
      },
    );
  }
}
