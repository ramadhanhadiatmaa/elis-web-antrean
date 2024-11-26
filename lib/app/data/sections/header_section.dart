import 'package:flutter/material.dart';

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
    );
  }
}
