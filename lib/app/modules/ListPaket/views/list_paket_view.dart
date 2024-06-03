// SearchResultsPage.dart

import 'package:flutter/material.dart';
import 'package:my_tsel/app/models/internetPaket.dart';

class SearchResultsPage extends StatefulWidget {
  final List<InternetPackage> packages;
  final String query;

  SearchResultsPage({required this.packages, required this.query});

  @override
  _SearchResultsPageState createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  late List<InternetPackage> _filteredPackages;

  @override
  void initState() {
    super.initState();
    _filterPackages(widget.query);
  }

  void _filterPackages(String searchText) {
    setState(() {
      _filteredPackages = widget.packages
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
          'Hasil Pencarian',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
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
              onChanged: (value) {
                _filterPackages(value);
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredPackages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredPackages[index].plan),
                    subtitle: Text(_filteredPackages[index].kouta),
                    trailing: Text(_filteredPackages[index].harga),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
