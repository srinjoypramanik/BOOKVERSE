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

        appBar: AppBar(

        ),

        body: Center(

          child: Text(
            "No User Logged In.\nPlease Login First.",
            style: TextStyle(
              fontSize:20,
            ),
          ),

        ),

      );

    }



    return Scaffold(

      backgroundColor: Colors.white,


      appBar: AppBar(

        backgroundColor: Colors.white,

        elevation:0,

        leading: IconButton(

          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),

          onPressed:(){

            Navigator.pop(context);

          },

        ),

      ),




      body: FutureBuilder<DocumentSnapshot>(


        future: FirebaseFirestore.instance
            .collection("users")
            .doc(user.uid)
            .get(),



        builder:(context,snapshot){



          if(snapshot.connectionState == ConnectionState.waiting){

            return Center(

              child:CircularProgressIndicator(),

            );

          }



          if(!snapshot.hasData || !snapshot.data!.exists){

            return Center(

              child:Text(
                "User Information Not Found",
                style:TextStyle(
                  fontSize:18,
                ),
              ),

            );

          }




          Map<String,dynamic> data =
          snapshot.data!.data() as Map<String,dynamic>;




          return SingleChildScrollView(

            child: Padding(

              padding:EdgeInsets.symmetric(horizontal:25),


              child:Column(

                children:[



                  SizedBox(height:20),




                  CircleAvatar(

                    radius:45,

                    backgroundColor:Colors.grey.shade200,


                    child:Icon(

                      Icons.person,

                      size:55,

                      color:Colors.black,

                    ),

                  ),




                  SizedBox(height:15),




                  Text(

                    data["name"] ?? "USER NAME",

                    style:TextStyle(

                      fontSize:24,

                      fontWeight:FontWeight.bold,

                    ),

                  ),




                  SizedBox(height:8),




                  Text(

                    data["phone"] ?? "Mobile Number",

                    style:TextStyle(

                      color:Colors.black,

                      fontSize:16,

                    ),

                  ),




                  SizedBox(height:5),




                  Text(

                    data["email"] ?? user.email ?? "Email",

                    style:TextStyle(

                      color:Colors.black,

                      fontSize:16,

                    ),

                  ),




                  SizedBox(height:45),





                  profileMenu(

                    context,

                    Icons.shopping_bag_outlined,

                    "My Orders",

                        (){

                      Navigator.push(

                        context,

                        MaterialPageRoute(

                          builder:(context)=>const Cart(),

                        ),

                      );

                    },

                  ),




                  profileMenu(

                    context,

                    Icons.favorite_border,

                    "Wishlist",

                        (){},

                  ),





                  profileMenu(

                    context,

                    Icons.settings_outlined,

                    "Settings",

                        (){


                      Navigator.push(

                        context,

                        MaterialPageRoute(

                          builder:(context)=>
                          const my_settings.Settings(),

                        ),

                      );


                    },

                  ),





                  SizedBox(height:70),





                  SizedBox(

                    width:200,

                    height:50,


                    child:ElevatedButton(


                      onPressed:() async{


                        await FirebaseAuth.instance.signOut();



                        Navigator.pushReplacement(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>
                            const HomeScreen(),

                          ),

                        );


                      },



                      style:ElevatedButton.styleFrom(


                        backgroundColor:Colors.black,


                        shape:RoundedRectangleBorder(

                          borderRadius:
                          BorderRadius.circular(30),

                        ),

                      ),




                      child:Text(

                        "Logout",

                        style:TextStyle(

                          color:Colors.white,

                          fontSize:20,

                        ),

                      ),


                    ),

                  ),




                  SizedBox(height:30),


                ],

              ),

            ),

          );


        },


      ),


    );


  }




  Widget profileMenu(

      BuildContext context,

      IconData icon,

      String title,

      VoidCallback onTap,

      ){



    return GestureDetector(


      onTap:onTap,


      child:Container(


        margin:EdgeInsets.symmetric(vertical:8),


        padding:EdgeInsets.all(16),



        decoration:BoxDecoration(


          color:Colors.white,


          borderRadius:
          BorderRadius.circular(15),



          border:Border.all(

            color:Colors.grey.shade300,

          ),


        ),



        child:Row(


          children:[



            Icon(

              icon,

              color:Colors.black,

            ),



            SizedBox(width:15),




            Text(

              title,

              style:TextStyle(

                fontSize:17,

                fontWeight:FontWeight.w500,

              ),

            ),




            Spacer(),




            Icon(

              Icons.arrow_forward_ios,

              size:15,

              color:Colors.grey,

            ),



          ],


        ),


      ),


    );


  }



}