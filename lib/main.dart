import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/get-view/album_controller.dart';
import 'package:get_demo/global-management/counter_screen.dart';
import 'package:get_demo/internationalization/languages.dart';

import 'get-view/album_screen.dart';
import 'local-state-management/setstate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      // defaultTransition: Transition.cupertino,
      defaultTransition: Transition.rightToLeftWithFade,
      locale: const Locale(
          'en', 'US'), // translations will be displayed in that locale
      fallbackLocale: const Locale('en',
          'UK'), // specify the fallback locale in case an invalid locale is selected.
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AlbumScreen(),
    );
  }
}
