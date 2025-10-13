import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_new_app/screen/continue_user.dart';

class BmsDashboard extends StatefulWidget {
  const BmsDashboard({super.key});

  @override
  State<BmsDashboard> createState() => _BmsDashboardState();
}

class _BmsDashboardState extends State<BmsDashboard> {
  final _formKey = GlobalKey<FormState>(); // ✅ Form key
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Continue As a User",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ContinueUser()),
                );
              }
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey, // ✅ Wrap with Form
            child: Column(
              children: [
                const SizedBox(height: 30),

                // ✅ Fixed SVG display
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
                      height: 120,
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

                Text(
                  "Welcome back 🥲\nSign in",
                  style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                // ✅ Email with validation
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Enter Email Address",
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey[700]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    }
                    if (!value.contains('@')) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                // ✅ Password with validation
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey[700]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContinueUser()),
                        );
                      }
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

                const Text.rich(
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                    children: [
                      TextSpan(
                        text: "Register",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
