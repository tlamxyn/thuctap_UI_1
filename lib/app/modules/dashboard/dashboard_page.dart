import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dak/app/global_widgets/accounts/account_page.dart';
import 'package:project_dak/app/global_widgets/appbar/custom_appbar.dart';
import 'package:project_dak/app/global_widgets/appbar/custom_drawer.dart';
import 'package:project_dak/app/global_widgets/custom_navbar.dart';
import 'package:project_dak/app/global_widgets/history_recent/history_recent.dart';
import 'package:project_dak/app/global_widgets/top_sub_title.dart';
import 'package:project_dak/app/modules/dashboard/components/account/account.dart';
import 'package:project_dak/app/modules/dashboard/components/banner/dashboard_banner.dart';
import 'package:project_dak/app/modules/dashboard/components/my_portfolio/potfolio_list.dart';

class DashBoardPage extends StatefulWidget {
  static String route = '/dashboard';
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppbar(
        'home'.tr,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DashBoardBanner(),
              SizedBox(height: 20),
              TopSubTitle(title: 'MyPortfolio'),
              PortfolioList(),
              SizedBox(height: 20),
              TopSubTitle(title: 'accounts'),
              AccountWidget(),
              //ChangedLanguage(),
              TopSubTitle(title: 'recent_ransaction'),
              HistoryRecent(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
