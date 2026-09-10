import 'dart:async';
import 'package:flutter/material.dart';
import 'homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    Timer(
        Duration(seconds: 1),
        (){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>const HomeScreen(),
          ),
         );
        },
      );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/bv.png',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}

