import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget{
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Home Screen',
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}