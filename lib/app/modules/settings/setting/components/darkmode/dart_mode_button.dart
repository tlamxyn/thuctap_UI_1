
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'component/change_button_widget.dart';

class Mode_Dark_Button extends StatefulWidget {
  const Mode_Dark_Button({Key? key}) : super(key: key);

  @override
  State<Mode_Dark_Button> createState() => _Mode_Dark_ButtonState();
}

class _Mode_Dark_ButtonState extends State<Mode_Dark_Button> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      // onTap: () async => {Get.find<AuthService>().logout()},
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 48,
            width: 374,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).primaryColor,
                    // spreadRadius: 10,
                    blurRadius: 3,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Dark Mode'.tr,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                     ChangeThemeButtonWidget(),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
