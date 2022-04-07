
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../l10n/localization_service.dart';

class LanguageList extends StatefulWidget {
  const LanguageList({Key? key}) : super(key: key);

  @override
  _LanguageListState createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  final locales = [
    {'name': 'English', 'locale': 'en'},
    {'name': 'Vietnamese', 'locale': 'vi'},
  ];
//lần đầu tiên tạo state
  @override
  void initState() {
    super.initState();
    _loadIndex();
  }
// tạo share pre
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late int _selectedIndex = 1;

// hàm select
  void _selectLocale(index) async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      prefs.setInt('selectedIndex', index);
      _selectedIndex = index;
    });
  }
//hàm lat index
  void _loadIndex() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      _selectedIndex = prefs.getInt('selectedIndex') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          height: 600,
          child: ListView.builder(
              itemCount: locales.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.all(10),
                    height: 48,
                    width: 374,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).primaryColor,
                            // spreadRadius: 10,
                            blurRadius: 1,
                            offset: const Offset(
                                0, 0), // changes position of shadow
                          ),
                        ],
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: OutlinedButton(
                      onPressed: () {
                        print(locales[index]['locale'].toString());
                        String _selectedLang = LocalizationService.locale!.languageCode;
                        _selectedLang = locales[index]['locale'].toString();
                        setState(() => LocalizationService.changeLocale(_selectedLang));
                        _selectLocale(index);
                      },
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: _selectedIndex == index
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                      Text(locales[index]['name'].toString(),
                                          style:  TextStyle(
                                              color: Theme.of(context).primaryColor )),
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.yellow,
                                        // size: 30.0,
                                      )
                                    ])
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                      Text(locales[index]['name'].toString(),
                                          style:  TextStyle(
                                              color: Theme.of(context).primaryColor)),
                                    ])),
                    ),
                  )),
        ));
  }
}
