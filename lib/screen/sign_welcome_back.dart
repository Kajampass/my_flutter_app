import 'package:flutter/material.dart';
import 'package:my_flutter_app/screen/sign_up.dart';

class SignWelcomeBack extends StatelessWidget {
  const SignWelcomeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Continue")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignWelcomePage()));
              },
              child: const Text("Continue as User"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BmsDashboard()));
              },
              child: const Text("Continue as BMS Personnel"),
            ),
          ],
        ),
      ),
    );
  }
}
