import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Icon icon;
  final double width;
  final double height;
  final Widget leadingPage;
  const MenuItem(
      {required this.width,
      required this.height,
      required this.title,
      required this.icon,
      Key? key,
      required this.leadingPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return leadingPage;
              },
            ))
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.all(10),
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    width: 1, color: Theme.of(context).primaryColor)),
            child: Center(
                child: Row(
              children: [
                icon,
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),
        ],
    );
  }
}
