import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Langganan extends StatelessWidget {
  const Langganan({
    super.key,
    required this.kouta,
    required this.tenggat,
    required this.harga,
    required this.plan,
    required this.diskon,
  });

  final String kouta;
  final String tenggat;
  final String harga;
  final String plan;
  final String diskon;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        width: Get.width * 0.69,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  kouta,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F2F6),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.hourglass_bottom_outlined),
                      SizedBox(width: 10),
                      Text(tenggat),
                    ],
                  ),
                ),
                Icon(
                  Icons.bookmark,
                  color: Colors.grey[400],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              diskon,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  harga,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffEC2028),
                  ),
                ),
                Text(
                  plan,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
