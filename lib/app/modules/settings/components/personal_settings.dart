
import 'package:flutter/material.dart';

import 'button/help_button.dart';
import 'button/language_button.dart';
import 'button/settings_button.dart';

class PersonalSettings extends StatefulWidget {
  const PersonalSettings({Key? key}) : super(key: key);

  @override
  State<PersonalSettings> createState() => _PersonalSettingsState();
}

class _PersonalSettingsState extends State<PersonalSettings> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        LanguageButton(),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          height: 15,
        ),
        SettingsButton(),
        const SizedBox(
          height: 15,
        ),
        HeplsButton(),
      ],
    );
  }
}

