import 'package:get/get.dart';

import '../controllers/k_p_telpon_controller.dart';

class KPTelponBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KPTelponController>(
      () => KPTelponController(),
    );
  }
}
