import 'package:flutter/material.dart';
import 'package:hotel_ticket/utils/storage_manager.dart';

class ThemeNotifier with ChangeNotifier {
  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: const Color(0xFF171717),
    brightness: Brightness.dark,
    //backgroundColor: const Color(0xFF212121),
    dividerColor: Colors.black12,
    iconTheme: const IconThemeData(color: Colors.white),

    fontFamily: 'SFProDisplay',
  );

  final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: const Color(0xFFD8D8D8),
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Colors.black),
    //backgroundColor: const Color(0xFFE5E5E5),
    dividerColor: Colors.white54,
    fontFamily: 'SFProDisplay',
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
