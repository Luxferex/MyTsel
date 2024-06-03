import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var check = false.obs;
  TextEditingController phone = TextEditingController();

  @override
  void onClose() {
    phone.dispose();
    super.onClose();
  }
}
