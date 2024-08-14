import 'dart:async';
import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:http/http.dart' as http;

class CallController extends GetxController {
  var ant = "".obs;

  final box = GetStorage();

  final playA = AudioPlayer();
  final playB = AudioPlayer();
  final playC = AudioPlayer();
  final playD = AudioPlayer();

  final play1 = AudioPlayer();
  final play2 = AudioPlayer();

  Timer? debounce;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  Future<bool> checkData() async {
    await GetStorage.init();
    return box.hasData('data');
  }

  Future<void> fetchData() async {
    var baseUrl = '${dotenv.env["BASE_URL_ANTRIAN"]}';

    final url = '$baseUrl/api/1';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);

        ant.value = result["ant"].toString();
      } else {
        Get.snackbar("Error Information", "${Error()}");
      }
    } catch (e) {
      Get.snackbar("Error Information", "$e");
    }
  }

  Future<void> updateData() async {
    try {
      var baseUrl = '${dotenv.env["BASE_URL_ANTRIAN"]}';

      final url = '$baseUrl/api/1';

      Map body = {};

      final response = await http.put(Uri.parse(url), body: body);

      if (response.statusCode == 200) {
        refreshPage();
        fetchData();
        Get.snackbar("Success Information", "Memanggil antrian selanjutnya");
      } else {
        Get.snackbar("${response.statusCode}", "${Error()}");
      }
    } catch (e) {
      Get.snackbar("Error Information", "$e");
      printError();
    }
  }

  Future<void> resetData() async {
    try {
      var baseUrl = '${dotenv.env["BASE_URL_ANTRIAN"]}';

      final url = '$baseUrl/api/reset/1';

      Map body = {};

      final response = await http.put(Uri.parse(url), body: body);

      if (response.statusCode == 200) {
        ant = "0".obs;
        refreshPage();
        Get.snackbar("Success Information", "Berhasil reset antrean");
        playSelamat();
      } else {
        Get.snackbar("${response.statusCode}", "${Error()}");
      }
    } catch (e) {
      Get.snackbar("Error Information", "$e");
    }
  }

  Future<void> playSelamat() async {
    await play1.play(AssetSource('selamat.mp3'));
  }

  Future<void> playPoli() async {
    await play2.play(AssetSource('poli.mp3'));
  }

  Future<void> playSound(String value) async {
    debounce?.cancel();
    debounce = Timer(const Duration(milliseconds: 300), () async {
      await playA.play(AssetSource('antrian.mp3'));
      playA.onPlayerComplete.listen((event) {
        int? number = int.tryParse(value);
        if (number != null) {
          if (number > 0 && number < 12) {
            if (audioFiles.containsKey(value)) {
              playB.play(AssetSource(audioFiles[value]!));
            }
          } else if (number > 11 && number < 20) {
            playB.play(AssetSource(audioFiles[value]!));
            playB.onPlayerComplete.listen((event) {
              playC.play(AssetSource('belas.mp3'));
            });
          } else if (number == 20) {
            playB.play(AssetSource(audioFiles[value]!));
            playB.onPlayerComplete.listen((event) {
              playC.play(AssetSource('puluh.mp3'));
            });
          } else if (number == 30) {
            playB.play(AssetSource(audioFiles[value]!));
            playB.onPlayerComplete.listen((event) {
              playC.play(AssetSource('puluh.mp3'));
            });
          } else if (number == 40) {
            playB.play(AssetSource(audioFiles[value]!));
            playB.onPlayerComplete.listen((event) {
              playC.play(AssetSource('puluh.mp3'));
            });
          } else if (number == 50) {
            playB.play(AssetSource(audioFiles[value]!));
            playB.onPlayerComplete.listen((event) {
              playC.play(AssetSource('puluh.mp3'));
            });
          } else if (number == 60) {
            playB.play(AssetSource(audioFiles[value]!));
            playB.onPlayerComplete.listen((event) {
              playC.play(AssetSource('puluh.mp3'));
            });
          } else if (number > 20 && number < 30) {
            playB.play(AssetSource('dua.mp3'));
            playB.onPlayerComplete.listen((event) {
              playC.play(AssetSource('puluh.mp3'));
              playC.onPlayerComplete.listen((event) {
                playD.play(AssetSource(audioFiles[value]!));
              });
            });
          } else if (number > 30 && number < 40) {
            playB.play(AssetSource('tiga.mp3'));
            playB.onPlayerComplete.listen((event) {
              playC.play(AssetSource('puluh.mp3'));
              playC.onPlayerComplete.listen((event) {
                playD.play(AssetSource(audioFiles[value]!));
              });
            });
          } else if (number > 40 && number < 50) {
            playB.play(AssetSource('empat.mp3'));
            playB.onPlayerComplete.listen((event) {
              playC.play(AssetSource('puluh.mp3'));
              playC.onPlayerComplete.listen((event) {
                playD.play(AssetSource(audioFiles[value]!));
              });
            });
          } else if (number > 50 && number < 60) {
            playB.play(AssetSource('lima.mp3'));
            playB.onPlayerComplete.listen((event) {
              playC.play(AssetSource('puluh.mp3'));
              playC.onPlayerComplete.listen((event) {
                playD.play(AssetSource(audioFiles[value]!));
              });
            });
          }
        } else {
          refreshPage();
        }
      });
    });
  }

  void refreshPage() {
    Get.forceAppUpdate();
  }

  final Map<String, String> audioFiles = {
    "1": "satu.mp3",
    "2": "dua.mp3",
    "3": "tiga.mp3",
    "4": "empat.mp3",
    "5": "lima.mp3",
    "6": "enam.mp3",
    "7": "tujuh.mp3",
    "8": "delapan.mp3",
    "9": "sembilan.mp3",
    "10": "sepuluh.mp3",
    "11": "sebelas.mp3",
    "12": "dua.mp3",
    "13": "tiga.mp3",
    "14": "empat.mp3",
    "15": "lima.mp3",
    "16": "enam.mp3",
    "17": "tujuh.mp3",
    "18": "delapan.mp3",
    "19": "sembilan.mp3",
    "20": "dua.mp3",
    "21": "satu.mp3",
    "22": "dua.mp3",
    "23": "tiga.mp3",
    "24": "empat.mp3",
    "25": "lima.mp3",
    "26": "enam.mp3",
    "27": "tujuh.mp3",
    "28": "delapan.mp3",
    "29": "sembilan.mp3",
    "30": "tiga.mp3",
    "31": "satu.mp3",
    "32": "dua.mp3",
    "33": "tiga.mp3",
    "34": "empat.mp3",
    "35": "lima.mp3",
    "36": "enam.mp3",
    "37": "tujuh.mp3",
    "38": "delapan.mp3",
    "39": "sembilan.mp3",
    "40": "empat.mp3",
    "41": "satu.mp3",
    "42": "dua.mp3",
    "43": "tiga.mp3",
    "44": "empat.mp3",
    "45": "lima.mp3",
    "46": "enam.mp3",
    "47": "tujuh.mp3",
    "48": "delapan.mp3",
    "49": "sembilan.mp3",
    "50": "lima.mp3",
    "51": "satu.mp3",
    "52": "dua.mp3",
    "53": "tiga.mp3",
    "54": "empat.mp3",
    "55": "lima.mp3",
    "56": "enam.mp3",
    "57": "tujuh.mp3",
    "58": "delapan.mp3",
    "59": "sembilan.mp3",
    "60": "enam.mp3",
    "61": "satu.mp3",
    "62": "dua.mp3",
    "63": "tiga.mp3",
  };
}
