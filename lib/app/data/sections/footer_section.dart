import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/color.dart';
import '../widgets/text_widget.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 30,
      color: cMain,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              TextWidget(
                title:
                    "Rumah Sakit Umum Santa Elisabeth, ${DateFormat.yMd().format(DateTime.now())}, ${DateFormat.Hm().format(DateTime.now())}",
                color: cWhite,
                size: 12,
                weight: FontWeight.bold,
              ),
              const Spacer(),
              const TextWidget(
                title: "Developed by Ramadhan Hadiatma",
                color: cWhite,
                size: 12,
                weight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
