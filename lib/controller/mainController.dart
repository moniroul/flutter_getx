import 'package:get/get.dart';

class Maincontroller extends GetxController {
  final count = 0.obs;

  increment() {
    count.value = count.value + 1;
    print(count.value);
  }

  @override
  void onInit() {
    print("main Controller is init");
    super.onInit();
  }
}
