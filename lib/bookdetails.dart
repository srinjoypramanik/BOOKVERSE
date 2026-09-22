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
