import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

      ),


      body: SingleChildScrollView(

        child: Padding(

          padding: EdgeInsets.all(20),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,

            children: [


              Image.asset(
                'assets/images/bookverse.png',
                height: 120,
              ),


              // SizedBox(height: 20),
              //
              //
              // Text(
              //   "BOOKVERSE",
              //   style: TextStyle(
              //     fontSize: 28,
              //     fontWeight: FontWeight.bold,
              //     color: Color(0xFF4169E1),
              //   ),
              // ),


              SizedBox(height: 15),


              Text(
                "Your digital gateway to discover, explore and enjoy your favorite books.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),


              SizedBox(height: 30),


              Divider(),


              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About BookVerse",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              SizedBox(height: 10),


              Text(
                "BookVerse is a modern book platform designed to help users find, explore and manage books easily.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),


              SizedBox(height: 25),


              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Our Mission",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              SizedBox(height: 10),


              Text(
                "To make reading more accessible by connecting readers with books they love.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),


              SizedBox(height: 25),


              Divider(),


              Text(
                "( For Example )Version 1.0.0",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}