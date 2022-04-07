import 'package:flutter/material.dart';
import '../autbutton.dart';

class SettingsPrivary extends StatefulWidget {
  const SettingsPrivary({Key? key}) : super(key: key);

  @override
  State<SettingsPrivary> createState() => _SettingsPrivaryState();
}

class _SettingsPrivaryState extends State<SettingsPrivary> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AuthButton(
          title: 'Privary',
          height: 48,
          width: 374,
          fontSize: 20,
          onTap: () => {},//gọi trang setting
        ),
      ],
    );
  }
}
