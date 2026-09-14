import 'package:flutter/material.dart';
import 'package:bookverse/CartPage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,


      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        centerTitle: true,
      ),



      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,

          crossAxisAlignment: CrossAxisAlignment.center,


          children: [


            Container(

              height: 100,

              width: 100,

              color: Colors.black,

              child: Icon(

                Icons.person,
                size: 60,
                color: Colors.white,
              ),

            ),



            SizedBox(height: 20),



            Text(
              "User Name",

              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),



            SizedBox(height: 5),



            Text(
              "user@gmail.com",

              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),



            SizedBox(height: 140),

            TextButton(

              onPressed: (){
                Navigator.push(

                  context,

                  MaterialPageRoute(

                    builder: (context)=> const Cart(),

                  ),

                );

              },

              child: Text(
                "My Orders",

                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),




            SizedBox(height: 20),
            TextButton(

              onPressed: (){

              },
              child: Text(
                "Wishlist",

                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),






            SizedBox(height: 20),



            TextButton(

              onPressed: (){

              },

              child: Text(
                "Settings",

                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),

            ),



            SizedBox(height: 120),



            SizedBox(

              height: 50,
              width: 200,

              child: ElevatedButton(

                onPressed: () {},


                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.zero,
                  ),
                ),


                child: Text(
                  "Logout",


                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,

                  ),
                ),

              ),

            ),
            // ElevatedButton(
            //
            //   onPressed: () {},
            //
            //
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.black,
            //
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadiusGeometry.zero,
            //     ),
            //   ),
            //
            //
            //   child: Text(
            //     "Logout",
            //
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            //
            // ),


          ],

        ),

      ),

    );

  }
}