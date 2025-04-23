import 'package:flutter/material.dart';
import 'package:my_flutter_app/screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus 911 App',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(), // Make sure this widget exists in your project
    );
  }
}
