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

          padding: EdgeInsets.symmetric(horizontal: 20),


          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,


            children: [


              SizedBox(height: 40),



              Center(

                child: SizedBox(

                  height: 100,

                  child: Image.asset(
                    'assets/images/bookverse.png',
                  ),

                ),

              ),




              SizedBox(height: 25),



              Center(

                child: Text(

                  "Sign up with email",

                  style: TextStyle(

                    fontSize: 22,

                    fontWeight: FontWeight.w700,

                  ),

                ),

              ),




              SizedBox(height: 25),





              Text(
                "Full Name",

                style: TextStyle(

                  fontSize: 18,

                  fontWeight: FontWeight.w500,

                ),

              ),



              SizedBox(height: 10),



              TextField(

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

                    vertical: 18,

                  ),

                ),

              ),




              SizedBox(height: 15),




              Text(
                "Phone Number",

                style: TextStyle(

                  fontSize: 18,

                  fontWeight: FontWeight.w500,

                ),

              ),




              SizedBox(height: 10),



              TextField(

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

                    vertical: 18,

                  ),

                ),

              ),





              SizedBox(height: 15),





              Text(
                "Email Address",

                style: TextStyle(

                  fontSize: 18,

                  fontWeight: FontWeight.w500,

                ),

              ),




              SizedBox(height: 10),



              TextField(

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

                    vertical: 18,

                  ),

                ),

              ),




              SizedBox(height: 15),





              Text(
                "Password",

                style: TextStyle(

                  fontSize: 18,

                  fontWeight: FontWeight.w500,

                ),

              ),




              SizedBox(height: 10),




              TextField(

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

                    vertical: 18,

                  ),

                ),

              ),





              SizedBox(height: 15),





              Text(
                "Confirm Password",

                style: TextStyle(

                  fontSize: 18,

                  fontWeight: FontWeight.w500,

                ),

              ),




              SizedBox(height: 10),





              TextField(

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

                    vertical: 18,

                  ),

                ),

              ),





              SizedBox(height: 30),





              Center(

                child: SizedBox(

                  width: 250,

                  height: 60,


                  child: ElevatedButton(

                    onPressed: (){


                    },


                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.black,

                      foregroundColor: Colors.white,


                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(0),

                      ),

                    ),


                    child: Text(

                      "Sign up",

                      style: TextStyle(

                        fontSize: 25,

                        fontWeight: FontWeight.w500,

                      ),

                    ),

                  ),

                ),

              ),




              SizedBox(height: 15),





              Center(

                child: TextButton(

                  onPressed: (){


                  },


                  child: Text(

                    "Already have an account? Login",

                    style: TextStyle(

                      color: Colors.black,

                      fontSize: 17,

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