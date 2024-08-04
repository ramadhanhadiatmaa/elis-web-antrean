import 'package:get/get.dart';
import 'package:myapp/app/modules/antrean/controllers/antrean_controller.dart';

class AntreanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AntreanController>(() => AntreanController());
  }
}
