import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/global-management/next_screen.dart';
import 'package:get_demo/global-management/state_management.dart';

class Home extends GetView<CounterController> {
  const Home({Key? key}) : super(key: key);
  // int _counter = 0;

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
                GetX<CounterController>(builder: (_) {
                  return Text(
                    '${controller.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Get.to(const NextScreen());
                    },
                    child: const Text('NEXT SCREEN'))
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
