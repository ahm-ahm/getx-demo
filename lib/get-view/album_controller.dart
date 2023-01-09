import 'package:get/get.dart';
import 'package:get_demo/get-view/album.dart';

import 'apiprovider.dart';

class AlbumController extends GetxController with StateMixin<Album>{

  @override
  void onInit() {
    super.onInit;
    ApiProvider().fetchProducts().then((response) {
      change(response, status: RxStatus.success());
    }, onError: (err) {
      change(null,status: RxStatus.error(err.toString()));
    });
  }
}
