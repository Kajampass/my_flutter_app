import 'package:flutter/material.dart';
import 'package:ik/screens/sign_in_screen.dart';
import 'package:ik/screens/signup_screen.dart';
import 'package:ik/theme/theme.dart';
import 'package:ik/widget/custom_scaffold.dart';
import 'package:ik/widget/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome Back!\n',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                      'Enter personal details to your\nemployer account\n\n\n\n     ',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'PAY! Mobile App\n\n\n',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInScreen()),
                        );
                      },
                      color: Colors.transparent,
                      textColor: Colors.white, // text color for Sign In
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()),
                        ),
                      color: Colors.white,
                      textColor:
                      lightColorScheme.primary, // text color for Sign Up
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
