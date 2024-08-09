import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/constants/color.dart';
import 'package:myapp/app/data/constants/file_string.dart';
import 'package:myapp/app/data/widgets/button_widget.dart';
import 'package:myapp/app/data/widgets/text_widget.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../../../data/sections/login_section.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginSection();
  }
}
