import 'package:get/get.dart';
import 'package:project_dak/app/modules/assets/assets_page.dart';
import 'package:project_dak/app/modules/dashboard/dashboard_page.dart';
import 'package:project_dak/app/modules/member/member_page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.DASHBOARD,
      page: () => const DashBoardPage(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.MEMBER,
      page: () => const MemberPage(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.ASSETS,
      page: () => const AssetsPage(),
      preventDuplicates: false,
    ),
  ];
}
