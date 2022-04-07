import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dak/app/core/theme/theme_provider.dart';

class DashBoardBanner extends StatelessWidget {
  const DashBoardBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: MyThemes.darkTheme.indicatorColor,
        gradient: LinearGradient(
            colors: [
              MyThemes.darkTheme.indicatorColor,
              MyThemes.darkTheme.indicatorColor.withOpacity(0.4),
              MyThemes.darkTheme.indicatorColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            tileMode: TileMode.clamp),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: widthDevice * 0.45,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Assign expert to manage portfolio',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    print("Home banner");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: MyThemes.darkTheme.indicatorColor,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 17, vertical: 6),
                    textStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  child: Text(
                    'find_expert'.tr,
                  ),
                ),
              ],
            ),
          ),
          Image.network(
            'https://cdn3d.iconscout.com/3d/premium/thumb/nft-owner-4418547-3664058.png',
            height: heightDevice * 0.3,
            width: widthDevice * 0.3,
          ),
        ],
      ),
    );
  }
}
