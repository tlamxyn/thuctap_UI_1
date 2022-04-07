import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dak/app/routes/pages.dart';
import 'package:project_dak/app/modules/settings/setting_page.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).bottomAppBarColor,
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.DASHBOARD);
              },
              icon: const Icon(Icons.home,
                  //color:   Theme.of(context).primaryColor
                  color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.MEMBER);
              },
              icon: const Icon(Icons.person,
                  //color:  Theme.of(context).primaryColor,
                  color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.ASSETS);
              },
              icon: const Icon(Icons.account_balance_wallet_rounded,
                  //color:  Theme.of(context).primaryColor,
                  color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SettingPage();
                }));
              },
              icon: Icon(
                Icons.settings,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
