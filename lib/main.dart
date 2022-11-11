import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:workout_tracker/constants/navigation.dart';
import 'package:workout_tracker/constants/theme.dart';
import 'package:workout_tracker/screens/home_screen.dart';
import 'package:workout_tracker/screens/login_screen.dart';
import 'package:workout_tracker/screens/overview_screen.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
//     setWindowMinSize(const Size(700, 500));
//     // setWindowMaxSize(Size.infinite);
//   }
//   runApp(const MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(800, 600),
    center: true,
    backgroundColor: Colors.transparent,
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: lightTheme(context),
        home: const LoginScreen(),
        routes: {
          loginRoute: (context) => const LoginScreen(),
          homeRoute: (context) => const HomeScreen(),
          overviewRoute: (context) => const OverviewScreen(),
        });
  }
}
