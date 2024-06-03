import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:my_tsel/app/widgets/home/InfoKartu.dart';
import 'package:my_tsel/app/widgets/home/KlipPath.dart';
import 'package:my_tsel/app/widgets/home/kategori.dart';
import 'package:my_tsel/app/widgets/home/konten.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              text: "Hai,",
              style: TextStyle(
                fontSize: 22,
              ),
              children: [
                TextSpan(
                    text: " Georgio Armando",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold))
              ]),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              height: 30,
              width: 30,
              child: Icon(
                Icons.qr_code,
                size: 35,
                color: Colors.white,
              ),
            ),
          )
        ],
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 236, 32, 39),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color.fromARGB(255, 236, 32, 39),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 18),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        //height: 200,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Color(0xffE52D27),
                          Color(0xffB31217),
                        ])),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("08123456789",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Image.asset("assets/images/simpatiLogo.png"),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text("Sisa Pulsa Anda",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rp 1.000.000.000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    )),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Isi Pulsa",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                        Color(0xffF7B731)),
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Divider(
                              color: Colors.black,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Berlaku sampai ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "32 Desember 6969",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Telkomsel POIN ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 3),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF7B731),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    "999999",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InfoKartu(
                            jenis: "Internet",
                            jumlah: "99.99",
                            satuan: "TB",
                          ),
                          InfoKartu(
                            jenis: "Telpon",
                            jumlah: "999",
                            satuan: "Jam",
                          ),
                          InfoKartu(
                            jenis: "SMS",
                            jumlah: "99",
                            satuan: "SMS",
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
                Container(
                  height: 8,
                  color: Colors.grey[300],
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        //body

                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "Kategori Paket",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    icon: "assets/images/KPInternet.png",
                                    title: "Internet",
                                    routes: '/k-p-internet',
                                  ),
                                  ItemKategori(
                                    icon: "assets/images/KPTelpon.png",
                                    title: "Telpon",
                                    routes: "/k-p-telpon",
                                  ),
                                  ItemKategori(
                                    icon: "assets/images/KPSms.png",
                                    title: "SMS",
                                    routes: "/k-p-internet",
                                  ),
                                  ItemKategori(
                                    icon: "assets/images/KPRoaming.png",
                                    title: "Roaming",
                                    routes: "/k-p-internet",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    icon: "assets/images/KPHiburan.png",
                                    title: "Hiburan",
                                    routes: "/k-p-internet",
                                  ),
                                  ItemKategori(
                                    icon: "assets/images/KPUnggulan.png",
                                    title: "Unggulan",
                                    routes: "/k-p-internet",
                                  ),
                                  ItemKategori(
                                    icon: "assets/images/KPTersimpan.png",
                                    title: "Tersimpan",
                                    routes: "/k-p-internet",
                                  ),
                                  ItemKategori(
                                    icon: "assets/images/KPRiwayat.png",
                                    title: "Riwayat",
                                    routes: "/k-p-internet",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Terbaru dari Telkomsel",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Text(
                                  //   "Lihat Semua",
                                  //   style: TextStyle(
                                  //       fontSize: 16, color: Colors.red),
                                  // ),
                                ],
                              ),
                              CarouselSlider(
                                options: CarouselOptions(
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    viewportFraction: 1,
                                    disableCenter: true),
                                items: [
                                  Image.asset("assets/images/Konten1.png"),
                                  Image.asset("assets/images/Konten2.png"),
                                  Image.asset("assets/images/Konten1.png"),
                                  Image.asset("assets/images/Konten2.png"),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "AYO! Pake LinkAja!",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Pakai LinkAja untuk beli pulsa, beli paket data dan bayar tagihan lebih mudah.",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        KontenLink(
                                          image:
                                              "assets/images/KontenLink1.png",
                                        ),
                                        KontenLink(
                                          image:
                                              "assets/images/KontenLink2.png",
                                        ),
                                        KontenLink(
                                          image:
                                              "assets/images/KontenLink3.png",
                                        ),
                                        KontenLink(
                                          image:
                                              "assets/images/KontenLink1.png",
                                        ),
                                        KontenLink(
                                          image:
                                              "assets/images/KontenLink2.png",
                                        ),
                                        KontenLink(
                                          image:
                                              "assets/images/KontenLink3.png",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 60,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history_toggle_off,
              size: 35,
            ),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help,
              size: 35,
            ),
            label: 'Bantuan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              size: 35,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 35,
            ),
            label: 'Akun Saya',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          switch (index) {
            case 1:
              Get.offNamed('/riwayat');
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
