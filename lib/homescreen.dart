import 'package:flutter/material.dart';
import 'sign_up.dart';

class Homescreen extends StatelessWidget{
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
          actions: [
            Icon(Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 35,
            ),
            const SizedBox(width: 8),
          ],
      ),

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