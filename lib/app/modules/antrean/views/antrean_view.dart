import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/constants/color.dart';
import '../../../data/widgets/text_widget.dart';

import '../controllers/antrean_controller.dart';

class AntreanView extends GetView<AntreanController> {
  AntreanView({Key? key}) : super(key: key);

  final antreanC = Get.put(AntreanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 60,
            color: cBlue,
            child: const Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                TextWidget(
                  title: "RSU Santa Elisabeth Sambas",
                  color: cWhite,
                  size: 18,
                  weight: FontWeight.w800,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            color: cWhite,
            child: Column(
              children: [
                const TextWidget(
                  title: "Panggilan Untuk",
                  color: cBlue,
                  size: 22,
                  weight: FontWeight.bold,
                ),
                const TextWidget(
                  title: "NOMOR URUT",
                  color: Colors.amber,
                  size: 32,
                  weight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 460,
                  height: 280,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 5,
                    ),
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Center(
                    child: Obx(() => TextWidget(
                          title: antreanC.ant.value,
                          color: Colors.amber,
                          size: 160,
                          weight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 60,
            color: cBlue,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  title: "Harap Duduk Pada Tempat Yang Telah Disediakan",
                  color: cWhite,
                  size: 18,
                  weight: FontWeight.w800,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
