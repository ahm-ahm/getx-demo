import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/global-management/state_management.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CounterController>();
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text('NExt Screen')),
      body: Container(
        height: Get.height,
        width: Get.width,
        alignment: Alignment.center,
        child: Column(
          children: [Text('Received value: ${controller.counter}')],
        ),
      ),
    );
  }
}
