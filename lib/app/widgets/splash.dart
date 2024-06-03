import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 32, 39),
        body: Center(
          child: Container(
            width: 97,
            height: 123,
            child: Image.asset("assets/images/TelkomSplash.png"),
          ),
        ),
      ),
    );
  }
}
