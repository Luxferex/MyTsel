import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/app/widgets/navbar.dart';

import '../controllers/riwayat_controller.dart';

class RiwayatView extends GetView<RiwayatController> {
  const RiwayatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiwayatView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RiwayatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Get.offNamed('/home');
              break;
            case 2:
              Get.offNamed('/help');
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
