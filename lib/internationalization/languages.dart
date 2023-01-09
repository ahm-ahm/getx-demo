import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'Language': 'Language',
        },
        'de_DE': {
          'hello': 'Hallo Welt',
          'Language': 'languaje',
        }
      };
}

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Language'.tr)),
      body: Center(child: Text('hello'.tr)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          print('first================${Get.locale}');

          if (Get.locale == const Locale('en', 'US')) {
            Get.updateLocale(const Locale('de_DE'));
            print('value of lang=if================${Get.locale}');
          } else {
            Get.updateLocale(const Locale('en_US'));
            print('value of lang=else if===============${Get.locale}');
          }
          // });
        },
        child: const Icon(Icons.language),
      ),
    );
  }
}
