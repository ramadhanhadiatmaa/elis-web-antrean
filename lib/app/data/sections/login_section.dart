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
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: const BoxDecoration(
                          color: cBlue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  title: "ElisM",
                                  color: cWhite,
                                  size: 66,
                                  weight: FontWeight.bold,
                                ),
                                TextWidget(
                                  title: "Elisabeth Hospital Management System",
                                  color: cWhite,
                                  size: 14,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.18,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(
                                  title: "Log In",
                                  color: cBlack,
                                  size: 20,
                                  weight: FontWeight.w800,
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
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    labelText: "Username",
                                    labelStyle: const TextStyle(color: cGrey),
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
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    labelText: "Password",
                                    labelStyle: const TextStyle(color: cGrey),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Obx(
                                  () => ButtonWidgetWidth(
                                    title: loginC.isLoading.isFalse
                                        ? "LOGIN"
                                        : "LOADING..",
                                    tColor: cWhite,
                                    bColor: cBlue,
                                    size: 14,
                                    rad: 5,
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
