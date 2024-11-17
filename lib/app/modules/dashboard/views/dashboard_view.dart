import 'package:elis_web_antrean/app/data/constants/color.dart';
import 'package:elis_web_antrean/app/data/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Container(
                color: cWhite,
                height: 60,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextWidget(
                        title: "Elism.",
                        color: cMain,
                        size: 18,
                        weight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.menu,
                    ),
                    Spacer(),
                    Icon(
                      Icons.person,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                        left: 10,
                      ),
                      child: TextWidget(
                        title: "Admin Utama",
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
              )
            ],
          ),
          Expanded(
            child: Container(
              color: cWhite,
              child: Row(
                children: [
                  const SizedBox(
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          child: TextWidget(
                            title: "Dashboard",
                            color: cBlack,
                            size: 14,
                            weight: FontWeight.w900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          child: TextWidget(
                            title: "Antrean",
                            color: cBlack,
                            size: 14,
                            weight: FontWeight.w900,
                          ),
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
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 30,
            color: cMain,
            child: const Center(
              child: TextWidget(
                title: "Developed by Ramadhan Hadiatma @2025",
                color: cWhite,
                size: 12,
                weight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
