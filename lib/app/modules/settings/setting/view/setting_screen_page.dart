

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dak/app/core/theme/theme_provider.dart';

import '../../language/view/language_page_screen.dart';
import '../components/darkmode/dart_mode_button.dart';
import '../components/newfeeds/component/news_feed_button.dart';
import '../components/privacy/component/privacy_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
        init: SettingsController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
            // backgroundColor: Theme.of(context).iconTheme.color,
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(children: [
                        MaterialButton(
                          padding: const EdgeInsets.all(10),
                          minWidth: 0,
                          onPressed: () {
                            Navigator.maybePop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Theme.of(context).primaryColor,
                            size: 24.0,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Setting'.tr,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 32),
                        ),
                      ]),
                      const SizedBox(height: 25),
                      Mode_Dark_Button(),
                      const SizedBox(
                        height: 15,
                      ),
                       News_Feed_Button(),
                      const SizedBox(
                        height: 15,
                      ),
                       Privacy_Button(),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
