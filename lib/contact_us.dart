
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {

  const ContactUs({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,


      appBar: AppBar(

        backgroundColor: Colors.white,

        title: const Text(
          "Contact Us",
          style: TextStyle(
            color: Colors.black,
          ),
        ),

        centerTitle: true,

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),

      ),



      body: Padding(

        padding: const EdgeInsets.all(20),


        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,


          children: [


            const Center(

              child: Icon(

                Icons.contact_phone,

                size: 80,

                color: Colors.black,

              ),

            ),



            const SizedBox(height: 20),



            const Center(

              child: Text(

                "Contact Us",

                style: TextStyle(

                  fontSize: 28,

                  fontWeight: FontWeight.bold,

                ),

              ),

            ),



            const SizedBox(height: 10),



            const Center(

              child: Text(

                "We are happy to help you",

                style: TextStyle(

                  fontSize: 16,

                  color: Colors.grey,

                ),

              ),

            ),



            const SizedBox(height: 40),



            ListTile(

              leading: const Icon(

                Icons.phone,

                color: Colors.black,

              ),

              title: const Text(

                "Phone",

                style: TextStyle(

                  fontWeight: FontWeight.bold,

                ),

              ),

              subtitle: const Text(

                "+880 1234567890",

              ),

            ),



            const Divider(),



            ListTile(

              leading: const Icon(

                Icons.email,

                color: Colors.black,

              ),

              title: const Text(

                "Email",

                style: TextStyle(

                  fontWeight: FontWeight.bold,

                ),

              ),

              subtitle: const Text(

                "support@bookverse.com",

              ),

            ),



            const Divider(),



            ListTile(

              leading: const Icon(

                Icons.location_on,

                color: Colors.black,

              ),

              title: const Text(

                "Address",

                style: TextStyle(

                  fontWeight: FontWeight.bold,

                ),

              ),

              subtitle: const Text(

                "Dhaka, Bangladesh",

              ),

            ),



          ],

        ),

      ),

    );

  }

}