import 'package:flutter/material.dart';
const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF416FDF),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFF46EEE7),
  onSecondary: Color(0xFFFFFFFF),
  error: Color(0xFFB00020),
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF000000),
  onBackground: Color(0xFF46EEE7),
  shadow: Color(0xFF000000),
  background: Color(0xFFFCFDF6),

);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF416FDF),      // A nice blue
  onPrimary: Color(0xFFFFFFFF),    // White text/icons on primary
  secondary: Color(0xFF46EEE7),    // Teal accent
  onSecondary: Color(0xFF000000),  // Black text/icons on secondary
  error: Color(0xFFBA141A),        // Material dark red error
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFF121212),      // Typical dark background
  onSurface: Color(0xFFFFFFFF),
  onBackground: Color(0xFF1A1C18),
  shadow: Color(0xFF000000),
  background: Color(0xFFFCFDF6),// White text/icons on surface
);

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  //shadowColor: Colors.black, // replaces deprecated shadow
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(lightColorScheme.primary),
      foregroundColor:
      MaterialStateProperty.all(Colors.white),

      elevation: MaterialStateProperty.all<double>(5.0),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26), // ✅ fixed
        ),
      ),
    ),
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
);

