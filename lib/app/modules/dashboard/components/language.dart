import 'package:flutter/material.dart';
import 'package:project_dak/app/l10n/localization_service.dart';

class ChangedLanguage extends StatefulWidget {
  const ChangedLanguage({Key? key}) : super(key: key);

  @override
  State<ChangedLanguage> createState() => _ChangedLanguageState();
}

class _ChangedLanguageState extends State<ChangedLanguage> {
  String _selectedLang = LocalizationService.locale!.languageCode;

   List<DropdownMenuItem<String>> _buildDropdownMenuItems() {
    var list = <DropdownMenuItem<String>>[];
    LocalizationService.langs.forEach((key, value) {
      list.add(DropdownMenuItem<String>(
        value: key,
        child: Text(key),
      ));
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: DropdownButton<String>(
          icon: const Icon(Icons.arrow_drop_down),
          value: _selectedLang,
          items: _buildDropdownMenuItems(),
          onChanged: (String? value) {
            print(value);
            setState(() => _selectedLang = value!);
            LocalizationService.changeLocale(value!);
          },
        ),
      ),
    );
  }
}
