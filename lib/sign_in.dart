import 'package:flutter/material.dart';
import 'sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.black,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
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
              horizontal: screenWidth * 0.04,
            ),


            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [


                SizedBox(

                  height: screenHeight * 0.18,

                  child: Center(
                    child: Image.asset(
                      'assets/images/bookverse.png',
                    ),
                  ),

                ),



                Center(

                  child: Text(

                    'Sign in with your email',

                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w900,
                    ),

                  ),

                ),



                SizedBox(
                  height: screenHeight * 0.025,
                ),




                Text(

                  'Email Address',

                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w500,
                  ),

                ),



                SizedBox(
                  height: 10,
                ),



                TextField(

                  decoration: InputDecoration(

                    hintText: 'Enter your email',

                    filled: true,

                    fillColor: const Color(0xFFF1F1F5),


                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),

                      borderSide: BorderSide.none,

                    ),


                    contentPadding: const EdgeInsets.symmetric(

                      horizontal: 20,

                      vertical: 18,

                    ),

                  ),

                ),




                SizedBox(
                  height: 15,
                ),



                Text(

                  'Password',

                  style: TextStyle(

                    fontSize: screenWidth * 0.045,

                    fontWeight: FontWeight.w500,

                  ),

                ),




                SizedBox(
                  height: 10,
                ),




                TextField(

                  obscureText: true,

                  decoration: InputDecoration(

                    hintText: 'Enter your Password',

                    filled: true,

                    fillColor: const Color(0xFFF1F1F5),


                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),

                      borderSide: BorderSide.none,

                    ),


                    contentPadding: const EdgeInsets.symmetric(

                      horizontal: 20,

                      vertical: 18,

                    ),

                  ),

                ),




                Align(

                  alignment: Alignment.centerLeft,

                  child: TextButton(

                    onPressed: (){},

                    child: Text(

                      'Forgot my Password',

                      style: TextStyle(

                        color: Colors.black,

                        fontSize: screenWidth * 0.045,

                        fontWeight: FontWeight.w500,

                      ),

                    ),

                  ),

                ),




                SizedBox(

                  height: screenHeight * 0.02,

                ),




                Center(

                  child: SizedBox(

                    width: screenWidth * 0.5,

                    height: screenHeight * 0.065,


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

                          fontSize: screenWidth * 0.07,

                          fontWeight: FontWeight.w500,

                        ),

                      ),

                    ),

                  ),

                ),





                SizedBox(

                  height: screenHeight * 0.02,

                ),




                Center(

                  child: SizedBox(

                    width: screenWidth * 0.8,

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

                          fontSize: screenWidth * 0.045,

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