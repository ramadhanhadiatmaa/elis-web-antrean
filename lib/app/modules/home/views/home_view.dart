import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/constants/color.dart';

import '../../../data/widgets/button_widget.dart';
import '../../../data/widgets/text_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          title: "ANTREAN RSSE",
          color: cBlack,
          size: 30,
          weight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                title: "Layar Antrean",
                tColor: cWhite,
                bColor: cBlue,
                size: 14,
                rad: 20,
                press: () => Get.offAndToNamed(Routes.antrean),
              ),
              const SizedBox(
                height: 25,
              ),
              ButtonWidget(
                title: "Ambil Antrean",
                tColor: cWhite,
                bColor: cRed,
                size: 14,
                rad: 20,
                press: () => Get.offAndToNamed(Routes.antrean),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
