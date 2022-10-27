import 'package:flutter/material.dart';

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
        // '/login': (context) => LoginPage(),
        // '/Dashboard': (context) => Dashboard(),
        // '/request': (context) => Request_Reason(),
        // '/reset': (context) => ResetPassword(),
        // '/profile': (context) => Profile_page(),
        // '/changepassword': (context) => ChangePassword(),
      },
    );
  }
}
