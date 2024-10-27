import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/mainController.dart';
import 'package:flutter_getx/main.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  Page3({Key? key}) : super(key: key);
  final mainCtr = Get.find<Maincontroller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Flutter GetX 2"),
      ),
      body: Container(
        height: 150,
        color: Colors.blue,
        width: 300,
        child: Center(child: Text("Page 3 =>  ${mainCtr.count}")),
      ),
    );
  }
}
