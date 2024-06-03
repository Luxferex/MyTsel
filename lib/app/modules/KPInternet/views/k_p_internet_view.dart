import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_tsel/app/models/internetPaket.dart';
import 'package:my_tsel/app/modules/ListPaket/views/list_paket_view.dart';

import 'package:my_tsel/app/widgets/Langganan.dart';

class KPInternetView extends StatefulWidget {
  const KPInternetView({Key? key}) : super(key: key);

  @override
  _KPInternetViewState createState() => _KPInternetViewState();
}

class _KPInternetViewState extends State<KPInternetView> {
  List<InternetPackage> _packages = [
    InternetPackage(
      kouta: "99 TB",
      tenggat: "30 TAHUN",
      harga: "Rp 1.000",
      plan: "Internet OMG!",
      diskon: "Rp 1.000.000",
    ),
    InternetPackage(
      kouta: "12 TB",
      tenggat: "90 TAHUN",
      harga: "Rp 2.000",
      plan: "Iphone Plan",
      diskon: "Rp 2.000.000",
    ),
    InternetPackage(
      kouta: "69 GB",
      tenggat: "69 TAHUN",
      harga: "Rp 3.000",
      plan: "Android Plan",
      diskon: "Rp 3.000.000",
    ),
  ];

  List<InternetPackage> _filteredPackages = [];

  @override
  void initState() {
    super.initState();
    _filteredPackages = _packages; // Initialize filtered list with all packages
  }

  void _filterPackages(String searchText) {
    setState(() {
      _filteredPackages = _packages
          .where((package) =>
              package.plan.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Paket Internet',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: "Cari paket favorit kamu ...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    onSubmitted: (value) {
                      if (value.isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchResultsPage(
                              packages: _packages,
                              query: value,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    disableCenter: true,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                  ),
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
                Text(
                  "Langganan Kamu",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _filteredPackages.length,
                  itemBuilder: (context, index) {
                    return Langganan(
                      harga: _filteredPackages[index].harga,
                      tenggat: _filteredPackages[index].tenggat,
                      kouta: _filteredPackages[index].kouta,
                      plan: _filteredPackages[index].plan,
                      diskon: _filteredPackages[index].diskon,
                    );
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Kategori",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Center(
                                child: Text(
                                  'Semua Kategori',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        Kategori(
                                          text1: "MyTelkomsel",
                                          text2: "Reward",
                                        ),
                                        Kategori(
                                          text1: "Paket",
                                          text2: "Conference",
                                        ),
                                        Kategori(
                                          text1: "Internet",
                                          text2: "Mingguan",
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Kategori(
                                          text1: "Combo SAKTI",
                                          text2: "Reward",
                                        ),
                                        Kategori(
                                          text1: "Internet",
                                          text2: "Mingguan",
                                        ),
                                        Kategori(
                                          text1: "IPhone",
                                          text2: "",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Tutup'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "Lihat Semua",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Kategori(
                            text1: "MyTelkomsel",
                            text2: "Reward",
                          ),
                          Kategori(
                            text1: "Paket",
                            text2: "Conference",
                          ),
                          Kategori(
                            text1: "Internet",
                            text2: "Mingguan",
                          ),
                          Kategori(
                            text1: "MyTelkomsel",
                            text2: "Reward",
                          ),
                          Kategori(
                            text1: "Paket",
                            text2: "Conference",
                          ),
                          Kategori(
                            text1: "Internet",
                            text2: "Mingguan",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Kategori(
                            text1: "Combo SAKTI",
                            text2: "Reward",
                          ),
                          Kategori(
                            text1: "Internet",
                            text2: "Mingguan",
                          ),
                          Kategori(
                            text1: "IPhone",
                            text2: "",
                          ),
                          Kategori(
                            text1: "Combo SAKTI",
                            text2: "Reward",
                          ),
                          Kategori(
                            text1: "Internet",
                            text2: "Mingguan",
                          ),
                          Kategori(
                            text1: "IPhone",
                            text2: "",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Kategori extends StatelessWidget {
  const Kategori({
    super.key,
    required this.text1,
    this.text2,
  });

  final String text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: Get.width * 0.35,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffE52D27),
              Color(0xffB31217),
            ],
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              text2!,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
