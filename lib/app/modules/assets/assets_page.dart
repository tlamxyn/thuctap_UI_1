import 'package:flutter/material.dart';
import 'package:project_dak/app/core/values/images.dart';
import 'package:project_dak/app/global_widgets/accounts/account_page.dart';
import 'package:project_dak/app/global_widgets/appbar/custom_appbar.dart';
import 'package:project_dak/app/global_widgets/custom_navbar.dart';
import 'package:project_dak/app/global_widgets/history_recent/history_recent.dart';
import 'package:project_dak/app/global_widgets/top_sub_title.dart';
import 'package:project_dak/app/modules/assets/components/assets_card.dart';
import 'package:get/get.dart';

class AssetsPage extends StatelessWidget {
  static String route = '/assets';
  const AssetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> assetList = [
      {
        'nameToken': 'Bitcon token',
        'imageUrl': Images.Crypto_Bitcoin,
        'titleToken': 'Bitcon',
        'numberToken': 6,
        'unitl': 'BTC'
      },
      {
        'nameToken': 'Auroracoin',
        'imageUrl': Images.Crypto_Auroracoin,
        'titleToken': 'Auroracoin',
        'numberToken': 0,
        'unitl': 'DAK'
      },
      {
        'nameToken': 'Dogecoin',
        'imageUrl': Images.Crypto_Dogecoin,
        'titleToken': 'Dogecoin',
        'numberToken': 12,
        'unitl': 'DTC'
      },
      {
        'nameToken': 'Litecoin',
        'imageUrl': Images.Crypto_Litecoin,
        'titleToken': 'Litecoin',
        'numberToken': 0,
        'unitl': 'DAK'
      },
    ];
    return Scaffold(
      appBar: CustomAppbar('assets'.tr),
      bottomNavigationBar: const CustomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.separated(
                  padding: const EdgeInsets.only(right: 24),
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  itemCount: assetList.length,
                  itemBuilder: (c, i) => AssetsCard(
                    nameToken: assetList[i]['nameToken'],
                    imageUrl: assetList[i]['imageUrl'],
                    titleToken: assetList[i]['titleToken'],
                    numberToken: assetList[i]['numberToken'],
                    unitl: assetList[i]['unitl'],
                  ),
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 17,
                    );
                  },
                ),
              ),
              const TopSubTitle(title: 'accounts'),
              const AccountWidget(),
              const TopSubTitle(title: 'recent_ransaction'),
              const HistoryRecent(),
            ],
          ),
        ),
      ),
    );
  }
}
