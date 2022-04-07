import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dak/app/core/theme/theme_provider.dart';

class TokenCard extends StatelessWidget {
  const TokenCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      height: heightDevice * 0.4,
      width: widthDevice,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          color: MyThemes.darkTheme.indicatorColor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'TokenSalesProgress'.tr,
            style: TextStyle(
              fontSize: 18,
              color: MyThemes.darkTheme.indicatorColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('TokensSold'.tr),
                        Text(
                          '320K DAK Token',
                          style: TextStyle(
                            fontSize: 16,
                            color: MyThemes.darkTheme.indicatorColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.amber[900],
                          ),
                          child: const Text(
                            '\$2M USD',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 5,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black12,
                                Colors.black87,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('TargetNumber'.tr),
                        Text(
                          '350M DAK Token',
                          style: TextStyle(
                            fontSize: 16,
                            color: MyThemes.darkTheme.indicatorColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Slider(
                  value: 10,
                  label: '10',
                  max: 100,
                  onChanged: (double value) {},
                ),
                 Text('Received 10% token bonus when buy 5000 DAK'.tr),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
