import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/app/widgets/navbar.dart';

import '../controllers/inbox_controller.dart';

class InboxView extends GetView<InboxController> {
  const InboxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InboxView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InboxView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 3,
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
