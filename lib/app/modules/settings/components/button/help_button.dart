import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeplsButton extends StatefulWidget {
  const HeplsButton({Key? key}) : super(key: key);

  @override
  State<HeplsButton> createState() => _HeplsButtonState();
}

class _HeplsButtonState extends State<HeplsButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            child: Center(
              child: Text(
                'Helps'.tr,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const Positioned.fill(
            left: 20,
            child: Align(
              child: Icon(
                Icons.help,
                // color: Colors.white,
              ),
              alignment: Alignment.centerLeft,
            ),
          )
        ],
      ),
    );
  }
}
