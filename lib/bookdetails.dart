import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget{
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.white,
      ),

      body: Center(),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: const[]),

    );
  }
}