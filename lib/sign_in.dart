import 'package:flutter/material.dart';
import 'sign_up.dart';

class SignIn extends StatelessWidget {

  const SignIn({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,


      appBar: AppBar(

        backgroundColor: Colors.white,

        leading: IconButton(

          icon: const Icon(

            Icons.arrow_back,

            color: Colors.black,

          ),

          onPressed: (){

            Navigator.pop(context);

          },

        ),

      ),



      body: SafeArea(

        child: SingleChildScrollView(

          child: Padding(

            padding: EdgeInsets.symmetric(

              horizontal: 20,

            ),


            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,


              children: [


                SizedBox(

                  height: 100,

                  child: Center(

                    child: Image.asset(

                      'assets/images/bookverse.png',

                      height: 300,

                      width: 300,

                    ),

                  ),

                ),




                SizedBox(height: 20),





                Center(

                  child: TextButton(

                    onPressed: (){

                    },


                    child: Text(

                      'Sign in with your email',


                      style: TextStyle(

                        fontSize: 20,

                        fontWeight: FontWeight.w900,

                        decoration: TextDecoration.underline,

                      ),

                    ),

                  ),

                ),





                SizedBox(height: 20),





                Text(

                  'Email Address:',


                  style: TextStyle(

                    fontSize: 18,

                    fontWeight: FontWeight.bold,

                  ),

                ),





                SizedBox(height: 10),





                TextField(

                  decoration: InputDecoration(

                    hintText: 'Enter your email',

                    filled: true,

                    fillColor: Color(0xFFF1F1F5),


                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),

                      borderSide: BorderSide.none,

                    ),


                    contentPadding: EdgeInsets.symmetric(

                      horizontal: 20,

                      vertical: 18,

                    ),

                  ),

                ),





                SizedBox(height: 15),





                Text(

                  'Password:',


                  style: TextStyle(

                    fontSize: 18,

                    fontWeight: FontWeight.bold,

                  ),

                ),





                SizedBox(height: 10),





                TextField(

                  obscureText: true,


                  decoration: InputDecoration(

                    hintText: 'Enter your Password',

                    filled: true,

                    fillColor: Color(0xFFF1F1F5),


                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),

                      borderSide: BorderSide.none,

                    ),


                    contentPadding: EdgeInsets.symmetric(

                      horizontal: 20,

                      vertical: 18,

                    ),

                  ),

                ),





                SizedBox(height: 5),





                TextButton(

                  onPressed: (){


                  },


                  child: Text(

                    'Forgot My Password',


                    style: TextStyle(

                      color: Colors.black,

                      fontSize: 16,

                      fontWeight: FontWeight.bold,

                      decoration: TextDecoration.underline,

                    ),

                  ),

                ),





                SizedBox(height: 20),





                Center(

                  child: SizedBox(

                    width: 250,

                    height: 60,


                    child: ElevatedButton(

                      onPressed: (){},



                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.black,

                        foregroundColor: Colors.white,


                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(0),

                        ),

                      ),



                      child: Text(

                        'Login',


                        style: TextStyle(

                          fontSize: 25,

                          fontWeight: FontWeight.w500,

                        ),

                      ),

                    ),

                  ),

                ),





                SizedBox(height: 20),





                Center(

                  child: SizedBox(

                    width: 300,


                    child: TextButton(

                      onPressed: (){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder: (context)=> const SignUpPage(),

                          ),

                        );


                      },


                      child: Text(

                        'Create a new account',


                        style: TextStyle(

                          color: Colors.black,

                          fontSize: 18,

                          fontWeight: FontWeight.w500,

                          decoration: TextDecoration.underline,

                        ),

                      ),

                    ),

                  ),

                ),



              ],

            ),

          ),

        ),

      ),

    );

  }

}