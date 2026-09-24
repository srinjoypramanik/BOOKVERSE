import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {

  const SignUpPage({super.key});


  @override
  State<SignUpPage> createState() => _SignUpPageState();

}



class _SignUpPageState extends State<SignUpPage> {


  String name = "";
  String phone = "";
  String email = "";
  String password = "";
  String confirmPassword = "";


  bool isSignupActive = false;



  void checkSignupButton(){


    setState(() {

      isSignupActive =
          name.isNotEmpty &&
              phone.isNotEmpty &&
              email.isNotEmpty &&
              password.isNotEmpty &&
              confirmPassword.isNotEmpty;


    });


  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,


      appBar: AppBar(

        backgroundColor: Colors.white,


        leading: IconButton(

          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),


          onPressed: (){

            Navigator.pop(context);

          },

        ),

      ),



      body: SingleChildScrollView(

        child: Padding(

          padding: EdgeInsets.symmetric(horizontal: 20),


          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,


            children: [


              SizedBox(height: 8),


              Center(

                child: SizedBox(

                  height: 70,

                  child: Image.asset(

                    'assets/images/bookverse.png',

                  ),

                ),

              ),





              SizedBox(height: 8),




              Center(

                child: TextButton(

                  onPressed: (){


                  },


                  child: Text(

                    "Sign up with email",


                    style: TextStyle(

                      fontSize: 20,

                      fontWeight: FontWeight.bold,

                      decoration: TextDecoration.underline,

                    ),

                  ),

                ),

              ),





              SizedBox(height: 8),





              Text(

                "Full Name:",

                style: TextStyle(

                  fontSize: 18,

                  fontWeight: FontWeight.bold,

                ),

              ),



              SizedBox(height: 8),





              TextField(

                onChanged: (value){

                  name = value;

                  checkSignupButton();

                },


                decoration: InputDecoration(

                  hintText: "Enter your full name",

                  filled: true,

                  fillColor: Color(0xFFF1F1F5),


                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(20),

                    borderSide: BorderSide.none,

                  ),


                  contentPadding: EdgeInsets.symmetric(

                    horizontal: 20,

                    vertical: 16,

                  ),

                ),

              ),





              SizedBox(height: 8),





              Text(

                "Phone Number:",

                style: TextStyle(

                  fontSize: 18,

                  fontWeight: FontWeight.bold,

                ),

              ),




              SizedBox(height: 8),





              TextField(

                onChanged: (value){

                  phone = value;

                  checkSignupButton();

                },


                decoration: InputDecoration(

                  hintText: "Enter your phone number",

                  filled: true,

                  fillColor: Color(0xFFF1F1F5),


                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(20),

                    borderSide: BorderSide.none,

                  ),


                  contentPadding: EdgeInsets.symmetric(

                    horizontal: 20,

                    vertical: 16,

                  ),

                ),

              ),





              SizedBox(height: 8),





              Text(

                "Email Address:",

                style: TextStyle(

                  fontSize: 18,

                  fontWeight: FontWeight.bold,

                ),

              ),





              SizedBox(height: 8),





              TextField(

                onChanged: (value){

                  email = value;

                  checkSignupButton();

                },


                decoration: InputDecoration(

                  hintText: "Enter your email",

                  filled: true,

                  fillColor: Color(0xFFF1F1F5),


                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(20),

                    borderSide: BorderSide.none,

                  ),


                  contentPadding: EdgeInsets.symmetric(

                    horizontal: 20,

                    vertical: 16,

                  ),

                ),

              ),





              SizedBox(height: 8),





              Text(

                "Password:",

                style: TextStyle(

                  fontSize: 18,

                  fontWeight: FontWeight.bold,

                ),

              ),





              SizedBox(height: 8),





              TextField(

                obscureText: true,


                onChanged: (value){

                  password = value;

                  checkSignupButton();

                },


                decoration: InputDecoration(

                  hintText: "Enter your password",

                  filled: true,

                  fillColor: Color(0xFFF1F1F5),


                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(20),

                    borderSide: BorderSide.none,

                  ),


                  contentPadding: EdgeInsets.symmetric(

                    horizontal: 20,

                    vertical: 16,

                  ),

                ),

              ),





              SizedBox(height: 8),





              Text(

                "Confirm Password:",

                style: TextStyle(

                  fontSize: 18,

                  fontWeight: FontWeight.bold,

                ),

              ),





              SizedBox(height: 8),





              TextField(

                obscureText: true,


                onChanged: (value){

                  confirmPassword = value;

                  checkSignupButton();

                },


                decoration: InputDecoration(

                  hintText: "Re-enter your password",

                  filled: true,

                  fillColor: Color(0xFFF1F1F5),


                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(20),

                    borderSide: BorderSide.none,

                  ),


                  contentPadding: EdgeInsets.symmetric(

                    horizontal: 20,

                    vertical: 16,

                  ),

                ),

              ),





              SizedBox(height: 20),





              Center(

                child: SizedBox(

                  width: 250,

                  height: 60,


                  child: ElevatedButton(

                    onPressed: (){


                    },


                    style: ElevatedButton.styleFrom(


                      backgroundColor: isSignupActive

                          ? Colors.black

                          : Color(0xFF2563EB),



                      foregroundColor: Colors.white,


                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(30),

                      ),

                    ),




                    child: Text(

                      "Sign up",


                      style: TextStyle(

                        fontSize: 23,

                        fontWeight: FontWeight.bold,

                      ),

                    ),


                  ),

                ),

              ),





              SizedBox(height: 8),





              Center(

                child: TextButton(

                  onPressed: (){


                    Navigator.pop(context);


                  },


                  child: Text(

                    "Already have an account? Login",


                    style: TextStyle(

                      color: Colors.black,

                      fontSize: 18,

                      fontWeight: FontWeight.w500,

                      decoration: TextDecoration.underline,

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

}