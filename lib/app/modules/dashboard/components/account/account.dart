import 'package:flutter/material.dart';
import 'package:project_dak/app/core/theme/theme_provider.dart';
import 'package:project_dak/app/core/values/images.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      height: heightDevice * 0.3,
      width: widthDevice,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage(
              Images.Avatar,
            ),
          ),
          SizedBox(height: 30),
          Text(
            '\$1,445,000,000',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
