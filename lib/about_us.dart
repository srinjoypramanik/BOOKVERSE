import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,

        title: Text('ABOUT US',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 19,
          ),
        ),

      ),


      body: SingleChildScrollView(

        child: Padding(

          padding: EdgeInsets.all(20),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,

            children: [




              Image.asset(
                'assets/images/about.png',
                height: 310,
                width: 420,

              ),





              Divider(),
              SizedBox(height: 10),


              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ABOUT BOOKVERSE",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              SizedBox(height: 10),


              Text(
                "BOOKVERSE is a Unified Platform for Books and Educational Resources designed to help "
                    "users to find, explore and manage books easily.",


                style: TextStyle(
                  fontSize: 16,
                ),
              ),


              // SizedBox(height: 25),
              //
              //
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     "Our Mission",
              //     style: TextStyle(
              //       fontSize: 22,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              //
              //
              // SizedBox(height: 10),
              //
              //
              // Text(
              //   "To make reading more accessible by connecting readers with "
              //       "books they love.",
              //   style: TextStyle(
              //     fontSize: 16,
              //   ),
              // ),

              SizedBox(height: 10),
              Divider(),

              SizedBox(height: 25,),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Meet Our Team",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              SizedBox(height: 15,),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Srinjoy Pramanik",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              SizedBox(height: 10),


              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Full Stack Developer",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(height: 15,),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sheikh Tanzid Ahmed Sadi",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              SizedBox(height: 10),


              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Full Stack Developer",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(height: 15,),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Waizur Rahman",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              SizedBox(height: 10),


              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Full Stack Developer",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),






              SizedBox(height: 25),

              Text(
                "Version 1.600.0",
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

