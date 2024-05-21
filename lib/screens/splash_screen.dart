import 'dart:async';

import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const CalculatorApp(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              height: 300,
              "assets/calculator.png",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Calculator App",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
