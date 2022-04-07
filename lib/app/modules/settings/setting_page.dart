import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../global_widgets/divider.dart';
import 'components/button/log_out_button.dart';
import 'components/personal_settings.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  static String route = '/settings';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 25,
                ),
                Row(children: [
                  MaterialButton(
                    padding: const EdgeInsets.all(10),
                    minWidth: 0,
                    onPressed: () {
                      Navigator.maybePop(context);
                    },
                    child:  Icon(
                      Icons.arrow_back_ios_new,
                      color: Theme.of(context).primaryColor,
                      size: 24.0,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Menu'.tr,
                    style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                  ),
                ]),
                PersonalSettings(),
                const RowDivider(),
                LogOutButton(),
              ]),
            ),
          ),
        ));
  }
}
