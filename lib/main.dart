import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/mainController.dart';
import 'package:flutter_getx/page1.dart';
import 'package:flutter_getx/page2.dart';
import 'package:flutter_getx/page3.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(Maincontroller());
  runApp(MaterialApp(
    home: Main(),
  ));
}

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);

  final mainCtr = Get.find<Maincontroller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Flutter GetX"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Page 1 data => "),
                Page1(),
                Text("Page 2 data =>"),
                Page2(),
                SizedBox(
                  height: 20,
                ),
                Obx(() {
                  return Text("Count => ${mainCtr.count}");
                }),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page3()));
                  },
                  child: Text("go page 3"),
                ),
                MaterialButton(
                  onPressed: () {
                    mainCtr.increment();
                  },
                  child: Text("Count"),
                )
              ],
            ),
          ),
        ));
  }
}
