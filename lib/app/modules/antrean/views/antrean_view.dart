import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/antrean_controller.dart';

class AntreanView extends GetView<AntreanController> {
  const AntreanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Ini Screen")),
    );
  }
}
