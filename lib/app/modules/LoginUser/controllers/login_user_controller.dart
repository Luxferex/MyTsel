import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginUserController extends GetxController {
  //TODO: Implement LoginUserController

  static LoginUserController get instance => Get.find();

  final email = TextEditingController();
  final passwprd = TextEditingController();
  final fullname = TextEditingController();
  final phoneNo = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
