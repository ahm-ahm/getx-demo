import 'dart:convert';

import 'package:get/get_connect/connect.dart';
import 'package:get_demo/get-view/album.dart';

class ApiProvider extends GetConnect {
  Future<Album?> fetchProducts() async {
  try{
    final response = await get('https://jsonplaceholder.typicode.com/albums/1');
    if (response.status.hasError) {
      return Future.error(response.statusText ?? '');
    } else {
      return Album.fromJson(response.body);
    }
  }catch(e){
    print('error on fetch $e');return null;
  }
  }
}
