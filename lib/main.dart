import 'package:flutter/material.dart';
import 'package:workout_tracker/constants/theme.dart';
import 'package:workout_tracker/screens/home_screen.dart';
import 'package:workout_tracker/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(context),
      home: const HomeScreen(),
    );
  }
}
