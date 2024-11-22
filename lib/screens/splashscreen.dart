import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Set a delay for 3 seconds (you can change the duration)
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                /*WelcomeScreen()*/ WelcomeScreen()), // Replace with your home screen
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Image.asset(
            "assets/images/logo.png",
            width: (MediaQuery.of(context).size.width * 2) / 5,
            height: (MediaQuery.of(context).size.width * 2) / 5,
          ),
        ),
      ),
    );
  }
}
