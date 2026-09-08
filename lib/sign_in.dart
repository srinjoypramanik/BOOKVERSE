import 'package:flutter/material.dart';

class SignIn extends StatelessWidget{
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            
          ),
        ),
        title: Text('BOOKVERSE',
        style: TextStyle(
          color: Color(0xFFFFFFFF)
          ),
        ),
      ),
    );
  }
}