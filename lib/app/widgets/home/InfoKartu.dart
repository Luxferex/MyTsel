import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoKartu extends StatelessWidget {
  const InfoKartu({
    super.key,
    required this.jenis,
    required this.jumlah,
    required this.satuan,
  });

  final String jenis;
  final String jumlah;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jenis,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            RichText(
              text: TextSpan(
                  text: jumlah,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                  children: [
                    TextSpan(
                      text: (" $satuan"),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
