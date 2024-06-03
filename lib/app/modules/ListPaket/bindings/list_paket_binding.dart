import 'package:get/get.dart';

import '../controllers/list_paket_controller.dart';

class ListPaketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListPaketController>(
      () => ListPaketController(),
    );
  }
}
