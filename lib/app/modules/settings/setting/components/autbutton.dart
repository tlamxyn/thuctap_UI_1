import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final double fontSize;
  final void Function()? onTap;
  const AuthButton(
      {required this.height,
        required this.width,
        required this.title,
        required this.fontSize,
        required this.onTap,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          border: Border.all(
              color: Theme.of(context).scaffoldBackgroundColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}