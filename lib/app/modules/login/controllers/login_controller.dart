import 'dart:convert';
import 'package:elis_web_antrean/app/data/constants/color.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final TextEditingController userC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  RxBool isLoading = false.obs;

  final box = GetStorage();

  var load = "Login".obs;

  var password = "";

  Future<void> loginApi() async {
    isLoading.value = true; // Set loading to true
    load.value = "Loading...";
    try {
      var baseUrl = '${dotenv.env["BASE_URL_AUTH"]}';
      var header = '${dotenv.env["BASE_HEADER"]}';
      var key = '${dotenv.env["BASE_KEY"]}';

      var user = userC.text;
      var pass = passC.text;

      final url = '$baseUrl/api/$user';
      final headers = {header: key};

      final response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        password = result["password"].toString();

        if (pass == password) {
          box.write("data", user);
          Get.offAndToNamed(Routes.home);
          load.value = "Success";
        } else {
          Get.snackbar(
            margin: const EdgeInsets.all(20),
            "Gagal Masuk",
            "Password yang dimasukkan salah!!",
            backgroundColor: cRed,
            colorText: cWhite,
          );
          load.value = "Login";
        }
      } else {
        Get.snackbar(
          margin: const EdgeInsets.all(20),
          "Gagal Masuk",
          "Username tidak valid!!",
          backgroundColor: cRed,
          colorText: cWhite,
        );
        load.value = "Login";
      }
    } catch (e) {
      Get.snackbar("Error Information", "Gagal login");
      load.value = "Login";
    } finally {
      isLoading.value = false; // Ensure loading is set to false after API call
    }
  }
}
