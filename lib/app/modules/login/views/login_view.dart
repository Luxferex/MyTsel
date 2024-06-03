import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_tsel/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Container(
                alignment: Alignment.centerLeft,
                height: 150,
                child: Image.asset("assets/images/Login.png")),
            SizedBox(height: 30),
            Text(
              "Silahkan masuk dengan nomor Telkomsel anda",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Nomor HP",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.phone,
              autocorrect: false,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Cth : 08987654321"),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Colors.red,
                    value: controller.check.value,
                    onChanged: (Value) => controller.check.toggle(),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: "Saya menyetujui ",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("klik syarat");
                            },
                          text: "syarat",
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(
                          text: ",",
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("klik ketentuan");
                            },
                          text: " ketentuan",
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(
                          text: ", dan",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("klik privasi");
                            },
                          text: " privasi",
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(
                          text: " Telkomsel ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text(
                "Masuk",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  backgroundColor: Colors.grey,
                  fixedSize: Size(150, 50)),
            ),
            SizedBox(height: 20),
            Center(
              child: Text("Atau Masuk Dengan"),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(150, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                      side: WidgetStatePropertyAll(
                          BorderSide(color: Color.fromARGB(255, 59, 88, 152)))),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.key,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Twitter",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(150, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                      side: WidgetStatePropertyAll(
                          BorderSide(color: Colors.blue))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
