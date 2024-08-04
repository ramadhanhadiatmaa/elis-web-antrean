import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/app/data/constants/color.dart';

import '../../../data/widgets/button_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ANTREAN RSSE",
          style: GoogleFonts.lato(
            color: cBlack,
            fontSize: 36,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                title: "Layar Antrean",
                tColor: cWhite,
                bColor: cBlue,
                size: 14,
                rad: 20,
              ),
              SizedBox(
                height: 25,
              ),
              ButtonWidget(
                title: "Ambil Antrean",
                tColor: cWhite,
                bColor: cRed,
                size: 14,
                rad: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
