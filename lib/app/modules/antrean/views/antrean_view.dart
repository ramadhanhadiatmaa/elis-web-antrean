import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../data/constants/color.dart';
import '../../../data/widgets/text_widget.dart';

import '../controllers/antrean_controller.dart';

class AntreanView extends GetView<AntreanController> {
  AntreanView({Key? key}) : super(key: key);

  final antreanC = Get.put(AntreanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
          
            height: 60,
            color: cBlue,
            child: const Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                TextWidget(
                  title: "RSU Santa Elisabeth Sambas",
                  color: cWhite,
                  size: 18,
                  weight: FontWeight.w800,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  color: cWhite,
                  child: Column(
                    children: [
                      const TextWidget(
                        title: "Panggilan Untuk",
                        color: cBlue,
                        size: 22,
                        weight: FontWeight.bold,
                      ),
                      const TextWidget(
                        title: "NOMOR URUT",
                        color: Colors.amber,
                        size: 32,
                        weight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 460,
                        height: 280,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.amber,
                            width: 5,
                          ),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Center(
                          child: Obx(() => TextWidget(
                                title: antreanC.ant.value,
                                color: Colors.amber,
                                size: 160,
                                weight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               Expanded(
                child: Column(
                  children: [
                    const TextWidget(title: "INFORMASI KAMAR INAP", color: cBlue, size: 22, weight: FontWeight.w900,),
                    const SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25,),
                      child: Column(
                        children: [
                          const KamarWidget(jenis: "VIP", nama: "ST. MARKUS", total: "3", sedia: "1"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "VVIP", nama: "ST. MARKUS", total: "1", sedia: "0"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "NICU", nama: "ST. MARKUS", total: "5", sedia: "5"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "KELAS III", nama: "ST. TERESIA", total: "4", sedia: "0"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "KELAS I", nama: "ST. MARIA", total: "3", sedia: "0"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "KELAS II", nama: "ST. TERESIA", total: "2", sedia: "0"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "KELAS II", nama: "ST. MATIUS", total: "6", sedia: "1"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "KELAS II", nama: "ST. FRANSISKUS", total: "3", sedia: "1"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "KELAS III", nama: "ST. EGIDIO", total: "6", sedia: "2"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "KELAS III", nama: "ST. KLARA", total: "4", sedia: "0"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "KELAS III", nama: "ST. YOSEF", total: "4", sedia: "0"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "KELAS I", nama: "ST. LUKAS", total: "2", sedia: "0"),
                          Container(height: 0.5, color: cWhite,),
                          const KamarWidget(jenis: "ISOLASI", nama: "ST. YOHANES", total: "4", sedia: "2"),
                          Container(height: 0.5, color: cWhite,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 40,
            color: cBlue,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  title: "Harap Duduk Pada Tempat Yang Telah Disediakan",
                  color: cWhite,
                  size: 14,
                  weight: FontWeight.w800,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KamarWidget extends StatelessWidget {
  const KamarWidget({
    required this.jenis,
    required this.nama,
    required this.total,
    required this.sedia,
    super.key,
  });

  final String jenis, nama, total, sedia;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      color: cBlue,
      child:  Padding(
        padding:  const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: 110,
              child: TextWidget(title: jenis, color: cWhite, size: 14, weight: FontWeight.bold,),),
            Container(width: 1, color: cWhite,),
            SizedBox(
              width: 160,
              child:  Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextWidget(title: nama, color: cWhite, size: 14, weight: FontWeight.bold,),
              ),),
              const Spacer(),
            Container(width: 1, color: cWhite,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextWidget(title: total, color: cWhite, size: 14, weight: FontWeight.bold,),
            ),
            
            Container(width: 1, color: cWhite,),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 20),
              child: TextWidget(title: sedia, color: cWhite, size: 14, weight: FontWeight.bold,),
            ),
          ],
        ),
      ),
    );
  }
}
