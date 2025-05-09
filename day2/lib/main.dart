import 'package:flutter/material.dart';
import 'package:flutter_day2_task1/views/register_screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

var isNightMode = true;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          // OnboardingScreen1(),
          // LoginScreen2(),
          RegisterScreen3(),
      debugShowCheckedModeBanner: false,
    );
  }
}
