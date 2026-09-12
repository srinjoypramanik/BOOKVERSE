import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,


      appBar: AppBar(

        backgroundColor: Colors.black,

        leading: IconButton(

          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),

          onPressed: (){
            Navigator.pop(context);
          },

        ),

      ),



      body: SingleChildScrollView(

        child: Padding(

          padding: EdgeInsets.symmetric(horizontal: 38),


          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,


            children: [


              SizedBox(height: 45),



              Center(

                child: SizedBox(

                  height: 90,

                  child: Image.asset(
                    'assets/images/bookverse.png',
                  ),

                ),

              ),




              SizedBox(height: 30),




              Center(

                child: Text(

                  'Sign up with email',

                  style: TextStyle(

                    fontSize: 22,

                    fontWeight: FontWeight.w600,

                  ),

                ),

              ),





              SizedBox(height: 25),




              buildLabel("Full Name"),

              buildTextField(
                "Enter your full name",
              ),





              buildLabel("Phone Number"),

              buildTextField(
                "Enter your phone number",
              ),





              buildLabel("Email Address"),

              buildTextField(
                "Enter your email",
              ),





              buildLabel("Password"),

              buildTextField(
                "Enter your password",
              ),





              buildLabel("Confirm Password"),

              buildTextField(
                "Re-enter your password",
              ),





              SizedBox(height: 25),





              SizedBox(

                width: double.infinity,

                height: 55,


                child: ElevatedButton(


                  onPressed: (){


                  },


                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.black,

                    foregroundColor: Colors.white,


                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(12),

                    ),

                  ),



                  child: Text(

                    "Sign up with email",

                    style: TextStyle(

                      fontSize: 18,

                      fontWeight: FontWeight.w500,

                    ),

                  ),


                ),

              ),





              SizedBox(height: 18),





              Center(


                child: TextButton(


                  onPressed: (){


                  },



                  child: RichText(


                    text: TextSpan(


                      style: TextStyle(

                        color: Colors.black,

                        fontSize: 17,

                      ),



                      children: [



                        TextSpan(

                            text: "Already have an account? "

                        ),





                        TextSpan(


                          text: "Log in",



                          style: TextStyle(


                            decoration: TextDecoration.underline,


                            fontWeight: FontWeight.w600,


                          ),


                        ),



                      ],


                    ),



                  ),



                ),


              ),



            ],

          ),

        ),

      ),

    );

  }






  // Label Widget

  Widget buildLabel(String text){


    return Padding(


      padding: EdgeInsets.only(

        top: 10,

        bottom: 8,

      ),



      child: Text(


        text,



        style: TextStyle(

          fontSize: 17,

          fontWeight: FontWeight.w500,

        ),



      ),


    );


  }







  // TextField Widget

  Widget buildTextField(String hint){



    return TextField(



      decoration: InputDecoration(



        hintText: hint,



        filled: true,



        fillColor: Color(0xFFF0F0F5),





        border: OutlineInputBorder(



          borderRadius: BorderRadius.circular(12),



          borderSide: BorderSide.none,



        ),





        contentPadding: EdgeInsets.symmetric(


          horizontal: 15,


          vertical: 16,


        ),



      ),



    );

  }



}