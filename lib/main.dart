import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Elism -  RSU Santa Elisabeth",
    initialRoute: Routes.dashboard,
    getPages: AppPages.routes,
    defaultTransition: Transition.noTransition,
  ));
}
