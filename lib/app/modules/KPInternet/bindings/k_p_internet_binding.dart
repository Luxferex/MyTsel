import 'package:get/get.dart';

import '../controllers/k_p_internet_controller.dart';

class KPInternetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KPInternetController>(
      () => KPInternetController(),
    );
  }
}
