import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFFF6991C), // Orange
    scaffoldBackgroundColor: const Color(0xFF1C1C1E), // Dark background
    cardColor: const Color(0xFF2C2C2E), // Dark grey for cards
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFF6991C), // Orange
      secondary: Color(0xFFFFA726), // Lighter orange for accents
    ),
    textTheme: TextTheme(
      headlineLarge: const TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      headlineSmall: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      bodyMedium: const TextStyle(color: Colors.white),
      titleMedium:
          TextStyle(color: Colors.grey[400]), // Lighter grey for secondary text
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFFF6991C), // Orange for buttons
      textTheme: ButtonTextTheme.primary,
    ),
    appBarTheme: const AppBarTheme(
      color: Color(0xFF1C1C1E), // Dark background for app bars
      iconTheme: IconThemeData(color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor:
          const Color(0xFF1C1C1E), // Dark background for the bottom nav bar
      selectedItemColor: const Color(0xFFF6991C), // Orange for selected items
      unselectedItemColor: Colors.grey[400], // Light grey for unselected items
      showUnselectedLabels:
          true, // Ensures unselected labels are always visible
      unselectedLabelStyle:
          TextStyle(color: Colors.grey[400]), // Set unselected text color
      selectedLabelStyle:
          const TextStyle(color: Color(0xFFF6991C)), // Set selected text color
      type: BottomNavigationBarType
          .fixed, // Prevents items from moving on selection
    ),
  );
}
