
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dak/app/modules/settings/language/view/language_page_screen.dart';


class LanguageButton extends StatefulWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        //gọi trang ngôn ngư
        Navigator.push(context, MaterialPageRoute(builder: (context){ return LanguagePage();}))
      },
// onTap: () => showLocaleDialog(context),
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
            child: Center(
              child: Text(
                'Languages'.tr,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const Positioned.fill(
            left: 20,
            child: Align(
              child: Icon(
                Icons.language,
                // color: Colors.white,
              ),
              // child: ChangeThemeButtonWidget(),
              alignment: Alignment.centerLeft,
            ),
          )
        ],
      ),
    );
  }
}
