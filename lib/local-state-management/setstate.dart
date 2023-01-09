import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetState extends StatefulWidget {
  const SetState({Key? key}) : super(key: key);

  @override
  State<SetState> createState() => _SetStateState();
}

class _SetStateState extends State<SetState> {
  int value = 0;
  RxString f = ''.obs;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SetState')),
      body: Column(
        children: [
          ObxValue(
            (data) {
              return Text(
                f.value,
              );
            },
            f,
          ),
          ValueBuilder<bool?>(
            initialValue: false,
            builder: (value, updateFn) => Switch(
              value: value ?? false,
              onChanged:
                  updateFn, // same signature! you could use ( newValue ) => updateFn( newValue )
            ),
            // if you need to call something outside the builder method.
            onUpdate: (value) => print("Value updated: $value"),
            onDispose: () => print("Widget unmounted"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        f.value = (++value).toString();
      }),
    );
  }
}
