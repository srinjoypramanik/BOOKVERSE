import 'package:flutter/material.dart';
import 'homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  state<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends state<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Go to Home'),
      ),
    );
  }
}

