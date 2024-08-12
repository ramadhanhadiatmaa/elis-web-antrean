import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/sections/login_section.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginSection();
  }
}
