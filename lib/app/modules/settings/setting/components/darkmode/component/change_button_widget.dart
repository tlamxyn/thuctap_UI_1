

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ChangeThemeButtonWidget extends StatefulWidget {
  const ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  State<ChangeThemeButtonWidget> createState() => _ChangeThemeButtonWidgetState();
}
const String THEME_KEY = "dark";
class _ChangeThemeButtonWidgetState extends State<ChangeThemeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: Get.isDarkMode,
      activeColor: Colors.grey[600],
      activeTrackColor: Colors.blue,
      onChanged: (value) {
        String themeCode = value ? 'dark' : 'light';
        // print(themeCode);
        GetStorage('MyStorage').write(THEME_KEY, themeCode);
        Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
      },
    );
  }
}
