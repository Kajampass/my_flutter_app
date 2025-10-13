import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // For SVG images
import 'package:my_new_app/screen/GoodbyePage.dart';

// Use this for navigation
class ContinueUser extends StatelessWidget {
  const ContinueUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Continue As a EMS personnel",
          style: TextStyle(color: Colors.red),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const GoodbyePage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ✅ Fixed: use Stack for circle + SVG + Positioned widget
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    shape: BoxShape.circle,
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/4.svg',
                  height: 200,
                  width: 120,
                  placeholderBuilder: (context) => const SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(),
                  ),
                ),
                const Positioned(
                  top: 0,
                  left: 0,
                  child: CircleAvatar(radius: 25),
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Text(
              'Bridging\n information gap in\nemergencies!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 40),

            // Continue as User Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GoodbyePage(),
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
                  "Continue as User",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Continue as EMS Personnel Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  // TODO: Add action for EMS continuation
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: const BorderSide(color: Colors.red),
                ),
                child: const Text(
                  "Continue As EMS Personnel",
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
