import 'package:get/get.dart';

import '../controllers/bahasa_controller.dart';

class BahasaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BahasaController>(
      () => BahasaController(),
    );
  }
}
