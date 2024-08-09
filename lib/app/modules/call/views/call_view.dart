import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/constants/color.dart';
import 'package:myapp/app/data/widgets/button_widget.dart';

import '../controllers/call_controller.dart';

class CallView extends GetView<CallController> {
  const CallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SizedBox(
            width: 690,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      color: cBlue,
                      height: 300,
                      width: 540,
                    ),
                    Column(
                      children: [
                        Container(
                          color: cRed,
                          height: 150,
                          width: 150,
                        ),
                        Container(
                          color: cGrey,
                          height: 150,
                          width: 150,
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 230,
                      child: Center(
                        child: SizedBox(
                          width: 180,
                          height: 60,
                          child: ButtonWidget(
                            title: "CALL",
                            tColor: cWhite,
                            bColor: cBlue,
                            size: 12,
                            rad: 10,
                            press: () {},
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 230,
                      child: Center(
                        child: SizedBox(
                          width: 180,
                          height: 60,
                          child: ButtonWidget(
                            title: "NEXT",
                            tColor: cWhite,
                            bColor: Colors.greenAccent,
                            size: 12,
                            rad: 10,
                            press: () {},
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 230,
                      child: Center(
                        child: SizedBox(
                          width: 180,
                          height: 60,
                          child: ButtonWidget(
                            title: "RESET",
                            tColor: cWhite,
                            bColor: cRed,
                            size: 12,
                            rad: 10,
                            press: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
