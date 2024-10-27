import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/mainController.dart';
import 'package:flutter_getx/main.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);
  final mainCtr = Get.find<Maincontroller>();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        height: 150,
        color: Colors.red,
        width: 300,
        child: Center(child: Text("Page 1 =>  ${mainCtr.count}")),
      );
    });
  }
}
