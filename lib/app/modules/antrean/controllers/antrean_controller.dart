import 'dart:async';

import 'package:elis_web_antrean/app/data/models/kamar_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

import 'package:http/http.dart' as http;

import 'dart:convert';

import '../../../data/services/api_service.dart';

class AntreanController extends GetxController {
  var kamarlist = <KamarModel>[].obs;
  var ant = "".obs;
  Timer? timer;

  final box = GetStorage();

  @override
  void onInit() {
    startPolling();
    super.onInit();
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }

  Future<bool> checkData() async {
    await GetStorage.init();
    return box.hasData('data');
  }

  void startPolling() {
    timer =
        Timer.periodic(const Duration(seconds: 3), (Timer t) => fetchData());
  }

  Future<void> fetchKamar() async {
    try {
      var data = await ApiService().fetchKamarData();

      kamarlist.addAll(data);
    } catch (e) {
      Get.snackbar("Network Error", "$e");
    } 
  }

  Future<void> fetchData() async {
    var baseUrl = '${dotenv.env["BASE_URL_ANTRIAN"]}';

    final url = '$baseUrl/api/1';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      //final result = jsonDecode(response.body);

      //ant.value = result["ant"].toString();
      ant.value = jsonDecode(response.body)['ant'].toString();
    }
  }
}
