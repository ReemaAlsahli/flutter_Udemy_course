import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'messenger_screen.dart';
import 'count_screen.dart';
import 'user_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen(),
    );
  }
}
