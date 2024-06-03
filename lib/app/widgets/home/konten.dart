import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KontenLink extends StatelessWidget {
  const KontenLink({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: Get.width * 0.3,
      height: Get.height * 0.2,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
