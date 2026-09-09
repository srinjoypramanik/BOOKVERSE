import 'dart:async';

import 'package:flutter/material.dart';
import 'homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  state<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends state<SplashScreen> {

  @override
  void initState(){
    Timer(Duration(seconds: 10),
        (){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>const Homescreen()),
        }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Go to Home'),
      ),
    );
  }
}

