import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () =>Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  controller.count.value.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              Text(
                controller.count.value.toString(),
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(onPressed: (){controller.increment();}, child: Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}
