import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dak/app/global_widgets/appbar/custom_appbar.dart';
import 'package:project_dak/app/global_widgets/appbar/custom_drawer.dart';
import 'package:project_dak/app/global_widgets/custom_navbar.dart';

class MemberPage extends StatelessWidget {
  static String route = '/member';
  const MemberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppbar(
        'Member'.tr,
      ),
      body: const Center(
        child: Text('data'),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
