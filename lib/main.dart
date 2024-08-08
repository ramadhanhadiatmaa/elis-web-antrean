import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Antrean RSU Santa Elisabeth",
    initialRoute: Routes.login,
    getPages: AppPages.routes,
    defaultTransition: Transition.noTransition,
  ));
}
