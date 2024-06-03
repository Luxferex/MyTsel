import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/app/widgets/navbar.dart';

import '../controllers/akun_controller.dart';

class AkunView extends GetView<AkunController> {
  const AkunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AkunView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AkunView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 4,
        onTap: (index) {
          switch (index) {
            case 0:
              Get.offNamed('/home');
              break;
            case 1:
              Get.offNamed('/riwayat');
              break;
            case 2:
              Get.offNamed('/help');
              break;
            case 3:
              Get.offNamed('/inbox');
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
