import 'package:flutter/material.dart';
import 'package:project_dak/app/core/values/colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
      indicatorColor: const Color(0xffF9D205),
      scaffoldBackgroundColor: const Color(0xff212629),
      backgroundColor: const Color(0xFFE5E5E5),
      primaryColor: Colors.white,
      primaryColorDark: Colors.black,
      primaryColorLight: const Color(0xffFFFBFB),
      buttonColor: const Color(0xff353638),
      cardColor: const Color.fromARGB(255, 78, 78, 78),
      colorScheme: const ColorScheme.dark(),
    // iconTheme: const IconThemeData(color: iconMenu, opacity: 0.8)
  );
  static final lightTheme = ThemeData(
      indicatorColor: const Color(0xffF97F7F),
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.grey.shade400,
      primaryColor: Colors.grey.shade600,
      primaryColorDark: const Color(0xffEDF0F3),
      primaryColorLight: const Color(0xffFFFFFF),
      cardColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      // iconTheme: const IconThemeData(color: iconMenu, opacity: 0.8));
     // iconTheme: const IconThemeData(color: iconMenu, opacity: 0.8)
  );
}
