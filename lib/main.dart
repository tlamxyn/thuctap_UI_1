import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dak/app/core/theme/theme_provider.dart';
import 'package:project_dak/app/l10n/localization_service.dart';
import 'package:project_dak/app/modules/dashboard/dashboard_page.dart';
import 'package:project_dak/app/routes/pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      getPages: AppPages.pages,
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      home: const DashBoardPage(),
      //home: SettingPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
