import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../constants/color.dart';
import '../widgets/button_widget.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonWidget(
            title: "Layar Antrean",
            tColor: cWhite,
            bColor: cBlue,
            size: 14,
            rad: 20,
            press: () => Get.toNamed(Routes.antrean),
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonWidget(
            title: "Ambil Antrean",
            tColor: cWhite,
            bColor: cRed,
            size: 14,
            rad: 20,
            press: () => Get.snackbar("Update Soon", "Ambil Antrean"),
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonWidget(
            title: "Panggil Antrean",
            tColor: cWhite,
            bColor: Colors.greenAccent,
            size: 14,
            rad: 20,
            press: () => Get.toNamed(Routes.call),
          ),
        ],
      ),
    );
  }
}
