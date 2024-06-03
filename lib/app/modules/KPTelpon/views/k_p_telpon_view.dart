import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/k_p_telpon_controller.dart';

class KPTelponView extends GetView<KPTelponController> {
  const KPTelponView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paket Telpon'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Paket Telpon halaman',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
