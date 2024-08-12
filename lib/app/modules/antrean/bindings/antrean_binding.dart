import 'package:get/get.dart';
import '../controllers/antrean_controller.dart';

class AntreanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AntreanController>(() => AntreanController());
  }
}
