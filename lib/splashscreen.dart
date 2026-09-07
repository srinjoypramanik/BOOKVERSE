import 'package:flutter/material.dart';
import 'homescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Go to Home'),
      ),
    );
  }
}

