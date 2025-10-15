import 'package:flutter/material.dart';
import 'package:ik/screens/welcome_screen.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child; // ✅ define child as a field

  const CustomScaffold({super.key, required this.child}); // ✅ constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context,MaterialPageRoute(builder: (context) => const WelcomeScreen()),); // go back
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              // handle forward action (push new page maybe)
            },
          ),
        ],
      ),


    extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Background image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg4.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Foreground widgets (e.g., text, buttons)
          SafeArea(
            child: child, // ✅ use lowercase child
          ),
        ],
      ),
    );
  }
}
