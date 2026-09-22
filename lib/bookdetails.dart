import 'package:bookverse/homescreen.dart';
import 'package:bookverse/sign_in.dart';
import 'package:flutter/material.dart';
import 'CartPage.dart';

class BookDetails extends StatelessWidget{
  final String title;
  final String author;
  final String price;
  final String category;
  final String description;

  const BookDetails({
    super.key,
    required this.title,
    required this.author,
    required this.price,
    required this.category,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
           icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 35),
        ),

        centerTitle: true,
        title: Text('BOOK METRICS',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
           ),
          ),


        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>const Cart(),
                  ),
              );
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
