
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LogOutButton extends StatefulWidget {
  const LogOutButton({Key? key}) : super(key: key);

  @override
  State<LogOutButton> createState() => _LogOutButtonState();
}

class _LogOutButtonState extends State<LogOutButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => {
        //đăng xuất
      },
      child: Stack(
        children: [
          Container(
          // color: Colors.redAccent[600],
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
                'Logout'.tr,
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
                Icons.logout,
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
