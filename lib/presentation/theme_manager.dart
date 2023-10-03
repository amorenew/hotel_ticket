import 'package:flutter/material.dart';
import 'package:hotel_ticket/utils/storage_manager.dart';

class ThemeNotifier with ChangeNotifier {
  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: const Color(0xFF171717),
    brightness: Brightness.dark,
    dividerColor: Colors.black12,
    iconTheme: const IconThemeData(color: Colors.white),
    fontFamily: 'SFProDisplay',
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.black,
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        color: Color(0xFF9A9A9A),
      ),
    ),
    cardTheme: const CardTheme(
      color: Color(0xFF2D2D2D),
    ),
  );

  final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: const Color(0xFFD8D8D8),
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Colors.black),
    dividerColor: Colors.white54,
    fontFamily: 'SFProDisplay',
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        color: Color(0xFF4C4C4C),
      ),
    ),
    cardTheme: const CardTheme(
      color: Color(0xFFE9E9E9),
    ),
  );

  ThemeData? _themeData;
  ThemeData getTheme() => _themeData ?? lightTheme;

  ThemeNotifier() {
    StorageManager.readData('themeMode').then((value) {
      var themeMode = value ?? 'light';
      if (themeMode == 'light') {
        _themeData = lightTheme;
      } else {
        _themeData = darkTheme;
      }
      notifyListeners();
    });
  }

  void setDarkMode() async {
    _themeData = darkTheme;
    StorageManager.saveData('themeMode', 'dark');
    notifyListeners();
  }

  void setLightMode() async {
    _themeData = lightTheme;
    StorageManager.saveData('themeMode', 'light');
    notifyListeners();
  }

  void toggle() async {
    if (_themeData == lightTheme) {
      setDarkMode();
    } else {
      setLightMode();
    }
  }

  bool isLightMode() => _themeData == null || _themeData == lightTheme;
}
