import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/app/widgets/navbar.dart';

import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  const HelpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HelpView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HelpView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 2,
        onTap: (index) {
          switch (index) {
            case 0:
              Get.offNamed('/home');
              break;
            case 1:
              Get.offNamed('/riwayat');
              break;
            case 3:
              Get.offNamed('/inbox');
              break;
            case 4:
              Get.offNamed('/akun');
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
