import 'package:flutter/material.dart';

class SignIn extends StatelessWidget{
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFF000000),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.pop(context);
          }
        ),
        title: Text('BOOKVERSE',
        style: TextStyle(
          color: Color(0xFFFFFFFF)
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
            child: 
            Image.asset('assets/images/bookverse.png'),
          ),
          Center(
            child:
            Text('Sign in with your email',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text('Email Address',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
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
        ],
      ),
    );
  }
}