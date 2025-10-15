import 'package:flutter/material.dart';
import 'package:ik/screens/signup_screen.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
    this.buttonText,
    this.onTap,
    this.color,
    this.textColor,
  });

  final String? buttonText;
  final VoidCallback? onTap;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // ✅ call the callback passed from parent
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: color ?? Colors.white, // use passed color or default white
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
          ),
        ),
        child: Text(
          buttonText ?? '', // ✅ use actual buttonText
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: textColor, // ✅ use passed textColor
          ),
        ),
      ),
    );
  }
}
