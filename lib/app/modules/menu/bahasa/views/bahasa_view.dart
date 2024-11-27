import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/constants/color.dart';
import '../../../../data/docs/bahasa_data.dart';
import '../../../../data/sections/footer_section.dart';
import '../../../../data/sections/header_section.dart';
import '../../../../data/widgets/button_form.dart';
import '../../../../data/widgets/input_widget.dart';
import '../../../../data/widgets/kelola_widget.dart';
import '../../../../data/widgets/text_widget.dart';
import '../controllers/bahasa_controller.dart';

class BahasaView extends StatelessWidget {
  BahasaView({super.key});

  final BahasaController cont = Get.put(BahasaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: Container(
              color: cWhite,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: TextWidget(
                            title: "Menu/ ",
                            color: cBlack,
                            size: 12,
                            weight: FontWeight.normal,
                          ),
                        ),
                        TextWidget(
                          title: "Bahasa",
                          color: cMain,
                          size: 12,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    color: cSecondary,
                  ),
                  Expanded(
                    child: Container(
                      color: cForeground,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          color: cGrey.withOpacity(0.05),
                          child: Column(
                            children: [
                              const KelolaWidget(
                                title: "KELOLA BAHASA PASIEN",
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: BoxDecoration(
                                          color: cForeground,
                                          border: Border.all(
                                            color: cGrey,
                                            width: 0.2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            children: [
                                              InputForm(
                                                title: "ID",
                                                controller: cont.id,
                                              ),
                                              InputForm(
                                                title: "Bahasa",
                                                controller: cont.id,
                                              ),
                                              Row(
                                                children: [
                                                  ButtonForm(
                                                    title: "SIMPAN",
                                                    color: cMain,
                                                    press: () {},
                                                  ),
                                                  ButtonForm(
                                                    title: "GANTI",
                                                    color: cYellow,
                                                    press: () {},
                                                  ),
                                                  ButtonForm(
                                                    title: "HAPUS",
                                                    color: cRed,
                                                    press: () {},
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 120,
                                                  color: cGrey,
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: TextWidget(
                                                      title: "ID Bahasa",
                                                      color: cBlack,
                                                      size: 12,
                                                      weight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 2,
                                                  color: cWhite,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    color: cGrey,
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: TextWidget(
                                                        title: "Bahasa Pasien",
                                                        color: cBlack,
                                                        size: 12,
                                                        weight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const DataBahasa(
                                              id: "001",
                                              bahasa: "Bahasa Indonesia",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const FooterWidget(),
        ],
      ),
    );
  }
}
