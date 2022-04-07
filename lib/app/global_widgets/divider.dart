import 'package:flutter/material.dart';

class RowDivider extends StatelessWidget {
  const RowDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      width: 400,
      height: 1,
      decoration: const BoxDecoration(color: Color(0xFFB5A7A7)),
    );
  }
}

class CustomDevider extends StatelessWidget {
  const CustomDevider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      // color: prototypeColor,
      thickness: 1,
      height: 20,
    );
  }
}