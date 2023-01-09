import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'album_controller.dart';

class AlbumScreen extends GetView<AlbumController> {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AlbumController());

    return Scaffold(
        appBar: AppBar(
          title: const Text('GetConnect'),
        ),
        body: controller.obx(
          (state) => Column(
            children: [
              Text('title:'
                  '${state?.title}'),
              const SizedBox(height: 10),
              Text('id:${state?.id.toString()}'),
              const SizedBox(height: 10),
              Text('userId:${state?.userId.toString()}'),
              const SizedBox(height: 10),
            ],
          ),
          // here you can put your custom loading indicator, but
          // by default would be Center(child:CircularProgressIndicator())
          onLoading: const Center(child: CircularProgressIndicator()),
          onEmpty: const Text('No data found'),
          // here also you can set your own error widget, but by
          // default will be an Center(child:Text(error))
          onError: (error) {
            log('error $error');
            if (error != null && error.contains('SocketException')) {
              return const Center(child: Text('No Internet Connection'));
            }
            return const Center(child: Text('error'));

          },
        ));
  }
}
