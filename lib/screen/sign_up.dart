import 'package:flutter/material.dart';
import 'package:my_new_app/screen/bms_dashboard.dart';
import 'package:my_new_app/screen/image_scan_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          // ✅ Prevents overflow on small screens
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),

              // Central Image with Overlay Circles
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.pink[100], // ✅ fixed shade
                      shape: BoxShape.circle,
                    ),
                  ),
                  Image.asset(
                    'assets/images/G4.png',
                    height: 200,
                    width: 120,
                  ),
                  const Positioned(
                    top: 0,
                    left: 0,
                    child: CircleAvatar(radius: 25),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Subtitle
              Text(
                "Let’s get closer 🥲",
                style: TextStyle(fontSize: 20, color: Colors.grey[700]),
              ),

              const SizedBox(height: 20),

              // Title
              Text(
                "Bridging\n information gap in\n emergencies",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
              ),

              const SizedBox(height: 40),

              // Sign In Button
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BmsDashboard(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Colors.red[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Continue As EMS Personnel Button
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    // 👉 Add EMS navigation here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ImageScanPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Colors.green[700], // ✅ EMS button is green
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Continue As EMS Personnel",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
