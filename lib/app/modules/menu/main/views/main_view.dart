import 'package:elis_web_antrean/app/modules/menu/main/controllers/main_controller.dart';
import 'package:elis_web_antrean/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../../../../data/constants/color.dart';
import '../../../../data/sections/footer_section.dart';
import '../../../../data/sections/header_section.dart';
import '../../../../data/widgets/list_menu_dashboard.dart';
import '../../../../data/widgets/menu_widget.dart';
import '../../../../data/widgets/text_widget.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

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
                            title: "Menu",
                            color: cBlack,
                            size: 12,
                            weight: FontWeight.normal,
                          ),
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            child: Row(
                              children: [
                                MenuWidget(
                                  title: "BAHASA",
                                  press: () => Get.toNamed(
                                    Routes.bahasa,
                                  ),
                                  tColor: cBlack,
                                  bColor: cGrey.withOpacity(
                                    0.2,
                                  ),
                                ),
                                MenuWidget(
                                  title: "DESA",
                                  press: () {},
                                  tColor: cBlack,
                                  bColor: cGrey.withOpacity(
                                    0.2,
                                  ),
                                ),
                                MenuWidget(
                                  title: "KABUPATEN",
                                  press: () {},
                                  tColor: cBlack,
                                  bColor: cGrey.withOpacity(
                                    0.2,
                                  ),
                                ),
                                MenuWidget(
                                  title: "KECAMATAN",
                                  press: () {},
                                  tColor: cBlack,
                                  bColor: cGrey.withOpacity(
                                    0.2,
                                  ),
                                ),
                                MenuWidget(
                                  title: "PETUGAS",
                                  press: () {},
                                  tColor: cBlack,
                                  bColor: cGrey.withOpacity(
                                    0.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
