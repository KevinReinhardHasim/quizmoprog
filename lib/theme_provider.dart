import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = themeA;
  String _currentFont = 'Roboto';

  ThemeData get currentTheme => _currentTheme;

  String get currentFont => _currentFont;

  void changeTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }

  void changeFont(String font) {
    _currentFont = font;
    notifyListeners();
  }

  // Define themes
  static final ThemeData themeA = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.blue[50],
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18),
      bodyMedium: TextStyle(fontSize: 16),
    ),
  );

  static final ThemeData themeB = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green[50],
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18),
      bodyMedium: TextStyle(fontSize: 16),
    ),
  );

  static final ThemeData themeC = ThemeData(
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Colors.orange[50],
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18),
      bodyMedium: TextStyle(fontSize: 16),
    ),
  );
}
