import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,


      appBar: AppBar(
        backgroundColor: Colors.black,

        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        centerTitle: true,
      ),



      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,

        children: [


          SizedBox(height: 40),



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
              fontSize: 22,
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



          SizedBox(height: 40),



          Text(
            "My Orders",

            style: TextStyle(
              fontSize: 18,
            ),
          ),



          SizedBox(height: 20),



          Text(
            "Wishlist",

            style: TextStyle(
              fontSize: 18,
            ),
          ),



          SizedBox(height: 20),



          Text(
            "Settings",

            style: TextStyle(
              fontSize: 18,
            ),
          ),



          SizedBox(height: 40),



          ElevatedButton(

            onPressed: () {},

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),


            child: Text(
              "Logout",

              style: TextStyle(
                color: Colors.white,
              ),
            ),

          ),

        ],
      ),
    );
  }
}