import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/mainController.dart';
import 'package:flutter_getx/main.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
    Page2({Key? key}) : super(key: key);
  final mainCtr = Get.find<Maincontroller>();

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 150,
      color: Colors.green,
      width: 300,
    child: Center(child: Text("Page2 =>  ${mainCtr.count}")),
    );
  }
}
