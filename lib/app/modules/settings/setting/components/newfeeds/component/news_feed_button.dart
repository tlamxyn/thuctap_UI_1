
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class News_Feed_Button extends StatefulWidget {
  const News_Feed_Button({Key? key}) : super(key: key);

  @override
  State<News_Feed_Button> createState() => _News_Feed_ButtonState();
}

class _News_Feed_ButtonState extends State<News_Feed_Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () async => {Get.find<AuthService>().logout()},
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 48,
            width: 374,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).primaryColor,
                    // spreadRadius: 10,
                    blurRadius: 3,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'New Feeds'.tr,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      IconButton(
                        onPressed: () => {},// trang new feeds
                        icon: Icon(
                          Icons.navigate_next,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      )
                    ])),
          ),
        ],
      ),
    );
  }
}

