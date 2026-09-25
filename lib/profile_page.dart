import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:bookverse/CartPage.dart';
import 'package:bookverse/homescreen.dart';
import 'settings.dart' as my_settings;



class ProfilePage extends StatelessWidget {

  const ProfilePage({super.key});



  @override
  Widget build(BuildContext context) {


    User? user = FirebaseAuth.instance.currentUser;



    // No user logged in
    if(user == null){

      return Scaffold(

        backgroundColor: Colors.white,

        body: Center(

          child: Text(
            "No User Logged In",
            style: TextStyle(
              fontSize: 20,
            ),
          ),

        ),

      );

    }




    return Scaffold(


      backgroundColor: Colors.white,



      appBar: AppBar(

        backgroundColor: Colors.white,

        centerTitle: true,

      ),





      body: FutureBuilder<DocumentSnapshot>(


        future: FirebaseFirestore.instance

            .collection("users")

            .doc(user.uid)

            .get(),




        builder: (context, snapshot){



          if(snapshot.connectionState == ConnectionState.waiting){


            return Center(

              child: CircularProgressIndicator(),

            );


          }





          if(!snapshot.hasData || snapshot.data!.data() == null){


            return Center(

              child: Text(

                "User Information Not Found",

                style: TextStyle(

                  fontSize: 18,

                ),

              ),

            );


          }





          Map<String,dynamic> data =

          snapshot.data!.data()

          as Map<String,dynamic>;






          return Center(


            child: Column(


              mainAxisAlignment: MainAxisAlignment.start,


              crossAxisAlignment: CrossAxisAlignment.center,



              children: [



                SizedBox(height:50),





                Icon(

                  Icons.person,

                  size:100,

                  color:Colors.black,

                ),





                SizedBox(height:20),





                // Name

                Text(


                  data["name"] ?? "USER NAME",


                  style:TextStyle(

                    fontSize:30,

                    fontWeight:FontWeight.bold,

                  ),


                ),





                SizedBox(height:8),





                // Mobile Number

                Text(


                  data["phone"] ?? "Mobile Number",


                  style:TextStyle(

                    fontSize:16,

                    color:Colors.grey,

                  ),


                ),





                SizedBox(height:8),





                // Email

                Text(


                  data["email"] ?? "Email",


                  style:TextStyle(

                    fontSize:16,

                    color:Colors.grey,

                  ),


                ),






                SizedBox(height:140),





                TextButton(


                  onPressed:(){



                    Navigator.push(

                      context,

                      MaterialPageRoute(

                        builder:(context)=> const Cart(),

                      ),

                    );


                  },



                  child:Text(

                    "My Orders",


                    style:TextStyle(

                      fontSize:20,

                      fontWeight:FontWeight.bold,

                      decoration:TextDecoration.underline,

                    ),


                  ),


                ),





                SizedBox(height:20),





                TextButton(


                  onPressed:(){},



                  child:Text(

                    "Wishlist",


                    style:TextStyle(

                      fontSize:20,

                      fontWeight:FontWeight.bold,

                      decoration:TextDecoration.underline,

                    ),


                  ),


                ),






                SizedBox(height:20),





                TextButton(


                  onPressed:(){



                    Navigator.push(

                      context,

                      MaterialPageRoute(

                        builder:(context)=> const my_settings.Settings(),

                      ),

                    );


                  },



                  child:Text(

                    "Settings",


                    style:TextStyle(

                      fontSize:20,

                      fontWeight:FontWeight.bold,

                      decoration:TextDecoration.underline,

                    ),


                  ),


                ),






                SizedBox(height:120),





                SizedBox(


                  width:200,


                  height:50,



                  child: ElevatedButton(


                    onPressed:() async {



                      await FirebaseAuth.instance.signOut();



                      Navigator.pushReplacement(


                        context,


                        MaterialPageRoute(


                          builder:(context)=> const HomeScreen(),


                        ),


                      );



                    },




                    style:ElevatedButton.styleFrom(


                      backgroundColor:Colors.black,



                      shape:RoundedRectangleBorder(

                        borderRadius:BorderRadius.circular(30),

                      ),


                    ),





                    child:Text(


                      "Logout",


                      style:TextStyle(

                        color:Colors.white,

                        fontSize:25,

                      ),


                    ),


                  ),


                ),



              ],


            ),


          );



        },


      ),



    );


  }


}