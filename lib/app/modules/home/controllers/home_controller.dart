import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final box = GetStorage();

  Future<bool> checkData() async {
    await GetStorage.init();
    return box.hasData('data');
  }

  void logout() {
    box.remove("data");
    Get.offAllNamed(Routes.login);
  }
}
