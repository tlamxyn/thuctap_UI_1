import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopSubTitle extends StatelessWidget {
  final String title;
  final double paddingTop;
  final double paddingLeft;
  final double fontSize;
  const TopSubTitle(
      {Key? key,
      required this.title,
      this.paddingTop = 0,
      this.paddingLeft = 0,
      this.fontSize = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop,
        left: paddingLeft,
        bottom: 5,
      ),
      child: Text(
        title.tr,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
