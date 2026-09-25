import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



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







  Future<void> signupUser() async {


    try {


      UserCredential userCredential =

      await FirebaseAuth.instance.createUserWithEmailAndPassword(


        email: email.trim(),

        password: password.trim(),


      );



      String uid = userCredential.user!.uid;



      // Save user information

      await FirebaseFirestore.instance

          .collection("users")

          .doc(uid)

          .set({


        "name": name,

        "phone": phone,

        "email": email,


      });





      ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(

          content: Text(

            "Account Created Successfully",

          ),

        ),

      );



      Navigator.pop(context);



    }



    on FirebaseAuthException catch(e){



      ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(

          content: Text(

            e.message ?? "Signup Failed",

          ),

        ),

      );


    }


  }






  @override
  Widget build(BuildContext context) {


    return Scaffold(


      backgroundColor: Colors.white,



      body: Container(),


    );


  }


}