import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/sections/footer_section.dart';
import '../../../data/sections/header_section.dart';
import '../../../data/widgets/list_menu_dashboard.dart';
import '../../../data/widgets/text_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: Container(
              color: cWhite,
              child: Row(
                children: [
                  SizedBox(
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        ListMenuDashboard(
                          title: "Dashboard",
                          bColor: cMain,
                          tColor: cWhite,
                          press: () {},
                        ),
                        ListMenuDashboard(
                          title: "Pasien",
                          bColor: cWhite,
                          tColor: cBlack,
                          press: () {},
                        ),
                        ListMenuDashboard(
                          title: "IGD",
                          bColor: cWhite,
                          tColor: cBlack,
                          press: () {},
                        ),
                        ListMenuDashboard(
                          title: "Poliklinik",
                          bColor: cWhite,
                          tColor: cBlack,
                          press: () {},
                        ),
                        ListMenuDashboard(
                          title: "Rawat Inap",
                          bColor: cWhite,
                          tColor: cBlack,
                          press: () {},
                        ),
                        ListMenuDashboard(
                          title: "Apotek",
                          bColor: cWhite,
                          tColor: cBlack,
                          press: () {},
                        ),
                        ListMenuDashboard(
                          title: "Laboratorium",
                          bColor: cWhite,
                          tColor: cBlack,
                          press: () {},
                        ),
                        ListMenuDashboard(
                          title: "Radiologi",
                          bColor: cWhite,
                          tColor: cBlack,
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 2,
                    color: cSecondary,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: TextWidget(
                                  title: "Overview",
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
                          ),
                        ),
                      ],
                    ),
                  )
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
