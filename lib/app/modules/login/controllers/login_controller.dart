import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final TextEditingController userC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  final box = GetStorage();

  var password = "";

  Future<void> loginApi() async {
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

          Get.snackbar("Berhasil Login", "Autentifikasi sukses");
          Get.offAndToNamed(Routes.home);
        } else {
          Get.snackbar("Gagal Masuk", "Password yang dimasukkan salah!!");
        }
      } else {
        Get.snackbar("Gagal Masuk", "Username tidak valid!!");
      }
    } catch (e) {
      Get.snackbar("Error Information", "Gagal login, $e");
    }
  }
}
