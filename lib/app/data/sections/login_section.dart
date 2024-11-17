import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/login/controllers/login_controller.dart';
import '../../routes/app_pages.dart';
import '../constants/color.dart';
import '../constants/file_string.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class LoginSection extends StatelessWidget {
  LoginSection({
    super.key,
  });

  final loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: cWhite,
          body: Stack(
            children: [
              Image.asset(
                back,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: cWhite,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: cMain,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(
                                20,
                              ),
                            ),
                          ),
                          child: const SizedBox(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                    title: "ElisM",
                                    color: cWhite,
                                    size: 56,
                                    weight: FontWeight.bold,
                                    style: FontStyle.italic,
                                  ),
                                  TextWidget(
                                    title:
                                        "Elisabeth Hospital Management System",
                                    color: cWhite,
                                    size: 14,
                                    weight: FontWeight.w600,
                                    style: FontStyle.italic,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(
                                  title: "Hallo.",
                                  color: cMain,
                                  size: 20,
                                  weight: FontWeight.w800,
                                  style: FontStyle.italic,
                                ),
                                const TextWidget(
                                  title: "Masuk untuk melanjutkan",
                                  color: cGrey,
                                  size: 10,
                                  weight: FontWeight.w400,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  autocorrect: false,
                                  controller: loginC.userC,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    fillColor: cMain.withOpacity(0.2),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none),
                                    hintText: "Username",
                                    hintStyle: TextStyle(
                                      color: cBlack.withOpacity(0.5),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  autocorrect: false,
                                  controller: loginC.passC,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: cMain.withOpacity(0.2),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none),
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: cBlack.withOpacity(0.5),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Obx(
                                  () => ButtonWidgetWidth(
                                    title: loginC.load.value,
                                    tColor: cWhite,
                                    bColor: loginC.isLoading.value
                                        ? cGrey
                                        : cMain, // Change color when loading
                                    size: 14,
                                    rad: 10,
                                    press: () async {
                                      if (loginC.isLoading.isFalse) {
                                        loginC.loginApi();
                                      }
                                    },
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
