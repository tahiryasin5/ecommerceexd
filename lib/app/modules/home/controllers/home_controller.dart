import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxInt count = 0.obs;
  RxBool show = false.obs;

  TextEditingController ctrl = TextEditingController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    ctrl.dispose();
    super.onClose();
  }


  void increment() => count.value++;
}
