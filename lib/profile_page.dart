import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'CartPage.dart';
import 'homescreen.dart';
import 'settings.dart' as my_settings;


class ProfilePage extends StatelessWidget {

  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {


    User? user = FirebaseAuth.instance.currentUser;



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

        leading: IconButton(

          icon: Icon(

            Icons.arrow_back,

            color: Colors.black,

          ),

          onPressed: (){

            Navigator.pop(context);

          },

        ),

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





          if(snapshot.hasError){


            return Center(

              child: Text(

                "Something went wrong",

              ),

            );


          }





          if(!snapshot.hasData || !snapshot.data!.exists){


            return Center(

              child: Text(

                "User Information Not Found",

                style: TextStyle(

                  fontSize:18,

                ),

              ),

            );


          }





          Map<String,dynamic> data =

          snapshot.data!.data() as Map<String,dynamic>;







          return SingleChildScrollView(


            child: Center(


              child: Column(



                children: [



                  SizedBox(height:50),





                  Icon(

                    Icons.person,

                    size:100,

                    color:Colors.black,

                  ),





                  SizedBox(height:20),





                  Text(


                    data["name"] ?? "USER NAME",


                    style:TextStyle(

                      fontSize:30,

                      fontWeight:FontWeight.bold,

                    ),


                  ),





                  SizedBox(height:8),





                  Text(


                    data["phone"] ?? "Mobile Number",


                    style:TextStyle(

                      fontSize:16,

                      color:Colors.grey,

                    ),


                  ),





                  SizedBox(height:8),





                  Text(


                    data["email"] ?? user.email ?? "Email",


                    style:TextStyle(

                      fontSize:16,

                      color:Colors.grey,

                    ),


                  ),





                  SizedBox(height:120),





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






                  SizedBox(height:100),






                  SizedBox(


                    width:200,


                    height:50,



                    child:ElevatedButton(



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


            ),


          );



        },



      ),


    );


  }


}