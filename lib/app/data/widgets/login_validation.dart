import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'text_widget.dart';

import '../../routes/app_pages.dart';
import '../constants/color.dart';

class LoginValidation extends StatelessWidget {
  const LoginValidation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: 300,
        decoration: BoxDecoration(
            color: cWhite,
            borderRadius: BorderRadius.circular(
              8,
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(24, 24),
                color: cBlack.withOpacity(0.1),
                blurRadius: 50,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextWidget(
              title: "Oooopppss!! You Need Login",
              color: cRed,
              weight: FontWeight.w500,
              size: 14,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: cRed),
              onPressed: () => Get.offAndToNamed(Routes.login),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextWidget(
                  title: "Go to Login",
                  color: cWhite,
                  weight: FontWeight.w500,
                  size: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
