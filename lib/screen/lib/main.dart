import 'package:flutter/material.dart';
// import 'package:ik/screens/home.dart';
import 'package:ik/screens/welcome_screen.dart';
import 'package:ik/theme/theme.dart';        // Ensure 'Home' class is correctly imported

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login in Page',
      theme: lightMode,
      home: const WelcomeScreen(), // FIX: Use `Home()` instead of `home()`
    );
  }
}
