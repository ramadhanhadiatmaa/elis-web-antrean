import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:elis_web_antrean/app/data/widgets/login_validation.dart';
import '../../../data/constants/color.dart';
import '../../../data/sections/call_section.dart';
import '../../../data/widgets/button_widget.dart';
import '../../../data/widgets/text_widget.dart';

import '../controllers/call_controller.dart';

class CallView extends GetView<CallController> {
  CallView({Key? key}) : super(key: key);

  final callC = Get.put(CallController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: FutureBuilder(
          future: callC.checkData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return snapshot.data! ? CallSection() : const LoginValidation();
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
