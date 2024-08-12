import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:elis_web_antrean/app/modules/call/controllers/call_controller.dart';

import 'package:get/get.dart';

import '../constants/color.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class CallSection extends StatelessWidget {
  CallSection({
    super.key,
  });

  final callC = Get.put(CallController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: SizedBox(
          width: 690,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 300,
                    width: 540,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                        width: 5,
                      ),
                    ),
                    child: Center(
                      child: Obx(() => TextWidget(
                            title: callC.ant.value,
                            color: Colors.amber,
                            size: 160,
                            weight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Center(
                          child: SizedBox(
                            width: 110,
                            height: 40,
                            child: ButtonWidget(
                              title: "Tertibkan",
                              tColor: cWhite,
                              bColor: cBlue,
                              size: 9,
                              rad: 10,
                              press: () {
                                callC.playSelamat();
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Center(
                          child: SizedBox(
                            width: 110,
                            height: 40,
                            child: ButtonWidget(
                              title: "Panggil PD & Anak",
                              tColor: cWhite,
                              bColor: cBlue,
                              size: 9,
                              rad: 10,
                              press: () {
                                callC.playPoli();
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 230,
                    child: Center(
                      child: SizedBox(
                        width: 180,
                        height: 60,
                        child: ButtonWidget(
                          title: "CALL",
                          tColor: cWhite,
                          bColor: cBlue,
                          size: 12,
                          rad: 10,
                          press: () async {
                            int? number = int.tryParse(callC.ant.value);
                            if (number! < 61) {
                              callC.playSound(callC.ant.value);
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 230,
                    child: Center(
                      child: SizedBox(
                        width: 180,
                        height: 60,
                        child: ButtonWidget(
                          title: "NEXT",
                          tColor: cWhite,
                          bColor: Colors.greenAccent,
                          size: 12,
                          rad: 10,
                          press: () {
                            Get.defaultDialog(
                                contentPadding: const EdgeInsets.only(
                                  bottom: 25,
                                  left: 30,
                                  right: 30,
                                ),
                                titlePadding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                title: "Memanggil Antrian Selanjutnya",
                                titleStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                content: Container(),
                                actions: [
                                  ButtonWidget(
                                    title: "IYA",
                                    tColor: cWhite,
                                    bColor: cBlue,
                                    size: 10,
                                    rad: 10,
                                    press: () => {
                                      callC.updateData(),
                                      Get.back(),
                                    },
                                  ),
                                  ButtonWidget(
                                    title: "KEMBALI",
                                    tColor: cWhite,
                                    bColor: cGrey,
                                    size: 10,
                                    rad: 10,
                                    press: () => Get.back(),
                                  ),
                                ]);
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 230,
                    child: Center(
                      child: SizedBox(
                        width: 180,
                        height: 60,
                        child: ButtonWidget(
                          title: "RESET",
                          tColor: cWhite,
                          bColor: cRed,
                          size: 12,
                          rad: 10,
                          press: () {
                            Get.defaultDialog(
                                contentPadding: const EdgeInsets.only(
                                  bottom: 25,
                                  left: 30,
                                  right: 30,
                                ),
                                titlePadding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                title: "Mereset Antrian Sekarang",
                                titleStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                content: Container(),
                                actions: [
                                  ButtonWidget(
                                    title: "IYA",
                                    tColor: cWhite,
                                    bColor: cBlue,
                                    size: 10,
                                    rad: 10,
                                    press: () async {
                                      Get.back();
                                      callC.resetData();
                                    },
                                  ),
                                  ButtonWidget(
                                    title: "KEMBALI",
                                    tColor: cWhite,
                                    bColor: cGrey,
                                    size: 10,
                                    rad: 10,
                                    press: () => Get.back(),
                                  ),
                                ]);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
