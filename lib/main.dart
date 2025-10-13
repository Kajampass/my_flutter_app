import 'package:flutter/material.dart';
import 'package:my_new_app/screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bus 911 App',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
