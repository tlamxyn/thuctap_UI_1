import 'package:flutter/material.dart';
import 'package:project_dak/app/core/values/images.dart';
import 'package:project_dak/app/global_widgets/history_recent/components/recent_card.dart';
import 'package:get/get.dart';
import 'package:project_dak/app/routes/pages.dart';

class HistoryRecent extends StatelessWidget {
  const HistoryRecent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> recentList = [
      {
        'imageUrl': Images.Crypto_Bitcoin,
        'titleBitcon': 'Bitcon',
        'dateRecent': 'to day',
        'isBuy': true,
        'number': 2.02,
        'unit': 'BTC',
      },
      {
        'imageUrl': Images.Crypto_Auroracoin,
        'titleBitcon': 'Auroracoin',
        'dateRecent': '2 day ago',
        'isBuy': true,
        'number': 1.02,
        'unit': 'BTC',
      },
      {
        'imageUrl': Images.Crypto_Dogecoin,
        'titleBitcon': 'Dogecoin',
        'dateRecent': '3 day ago',
        'isBuy': false,
        'number': 3.02,
        'unit': 'DCG',
      },
      {
        'imageUrl': Images.Crypto_Char,
        'titleBitcon': 'Bitcon',
        'dateRecent': 'to day',
        'isBuy': false,
        'number': 1.09,
        'unit': 'LDT',
      },
    ];

    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (c, i) {
                return const SizedBox(height: 10);
              },
              itemCount: recentList.length,
              itemBuilder: (BuildContext context, index) => RecentCard(
                imageUrl: recentList[index]['imageUrl'],
                titleBitcon: recentList[index]['titleBitcon'],
                dateRecent: recentList[index]['dateRecent'],
                isBuy: recentList[index]['isBuy'],
                number: recentList[index]['number'],
                unit: recentList[index]['unit'],
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.MEMBER);
            },
            child: const Text('See more'),
          ),
        ],
      ),
    );
  }
}
