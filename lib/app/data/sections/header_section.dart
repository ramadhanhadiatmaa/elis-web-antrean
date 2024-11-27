import 'package:elis_web_antrean/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/color.dart';
import '../widgets/text_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: cWhite,
          height: 60,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: InkWell(
                  onTap: () => Get.toNamed(Routes.dashboard),
                  child: const TextWidget(
                    title: "Elism.",
                    color: cMain,
                    size: 18,
                    weight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () => Get.toNamed(
                  Routes.main,
                ),
                icon: const Icon(
                  Icons.menu_outlined,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.person,
              ),
              const Padding(
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
    );
  }
}
