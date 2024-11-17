import 'package:elis_web_antrean/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:elis_web_antrean/app/modules/dashboard/views/dashboard_view.dart';
import 'package:get/get.dart';

import '../modules/antrean/bindings/antrean_binding.dart';
import '../modules/antrean/views/antrean_view.dart';
import '../modules/call/bindings/call_binding.dart';
import '../modules/call/views/call_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.antrean,
      page: () => AntreanView(),
      binding: AntreanBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.call,
      page: () => CallView(),
      binding: CallBinding(),
    ),
    GetPage(
      name: _Paths.dashboard,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
