import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  CustomAppbar(
    this.title, {
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: Theme.of(context).iconTheme,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
      actions: <Widget>[
        // ChangeThemeButtonWidget(),
        IconButton(
          icon: const Icon(Icons.notifications),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            // ignore: avoid_print
            print("go to notifications page");
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: InkWell(
            onTap: () {
              // ignore: avoid_print
              print("go to account page");
            },
            child: const CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                  'https://cdn3d.iconscout.com/3d/premium/thumb/nft-owner-5112603-4269014.png'),
            ),
          ),
        ),
      ],
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
    );
  }
}
