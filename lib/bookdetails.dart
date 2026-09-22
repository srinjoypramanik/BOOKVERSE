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
           const SizedBox(width: 6),
        ],
      ),


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children:[

           SizedBox(height: 16),
           Row(
            children: [
            SizedBox(width: 12),
            Container(
              color: Colors.black,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),

              child: Text('BRAND NEW',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  ),
                ),
              ),
            ],
           ),
            SizedBox(height: 16),
           Row(
             children: [
               SizedBox(width: 12),
               Text(title,
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
                 )
               ),
             ],
           ),

           SizedBox(height: 8),
           Row(
             children: [
               SizedBox(width: 12),
               Text(author,
               style: TextStyle(
                 color: Colors.grey,
                 fontSize: 15,
                 fontWeight: FontWeight.bold
                ),
               ),
             ],
           ),
           SizedBox(height: 6),
           Divider(),
           SizedBox(height: 6),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   SizedBox(width: 12),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('OFFER PRICE',
                         style: TextStyle(
                           color: Colors.grey,
                           fontWeight: FontWeight.bold,
                           fontSize: 14,
                         ),
                       ),
                       SizedBox(height: 8),
                       Text(price,
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 22,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ],
                   ),
                 ],
               ),

           
