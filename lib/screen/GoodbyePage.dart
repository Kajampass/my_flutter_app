import 'package:flutter/material.dart';

class GoodbyePage extends StatelessWidget {
  const GoodbyePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ✅ SVG with fallback
              Image.asset('assets/images/goodbye.png',
                  height: 200, width: 200, fit: BoxFit.contain),

              const SizedBox(height: 30),

              const Text(
                "Goodbye 👋",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),

              const SizedBox(height: 15),

              const Text(
                "Thanks for using our app.\nSee you again soon!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
