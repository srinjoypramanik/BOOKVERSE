import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'sign_up.dart';
import 'homescreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();

}

class _SignInState extends State<SignIn> {
  String email = "";

  String password = "";

  bool isLoginActive = false;

  // Login success splash control
  bool showSuccessSplash = false;

  // Login failed splash control
  bool showErrorSplash = false;

  void checkLoginButton() {
    setState(() {
      isLoginActive = email.isNotEmpty && password.isNotEmpty;
    });
  }

  Future<void> loginUser() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );

      setState(() {
        showSuccessSplash = true;
      });

      Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,

          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        showErrorSplash = true;
      });

      Timer(const Duration(seconds: 3), () {
        setState(() {
          showErrorSplash = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Success Splash UI

    if (showSuccessSplash) {
      return Scaffold(
        backgroundColor: Colors.white,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset(
                'assets/images/after_login.png',

                height: 150,

                width: 150,
              ),

              const SizedBox(height: 30),

              const Text(
                "Login Successful",

                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
    }

    // Error Splash UI

    if (showErrorSplash) {
      return Scaffold(
        backgroundColor: Colors.white,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset(
                'assets/images/login_failed.png',

                height: 180,

                width: 180,
              ),

              const SizedBox(height: 30),

              const Text(
                "Login Failed",

                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),

          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),

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

              const SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () {},

                  child: const Text(
                    'Sign in with your email',

                    style: TextStyle(
                      fontSize: 20,

                      fontWeight: FontWeight.w900,

                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Text(
                'Email Address:',

                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              TextField(
                onChanged: (value) {
                  email = value;

                  checkLoginButton();
                },

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

                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              TextField(
                obscureText: true,

                onChanged: (value) {
                  password = value;

                  checkLoginButton();
                },

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

              SizedBox(height: 15),
              TextButton(
                onPressed: () {},

                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,

                  alignment: Alignment.centerLeft,
                ),

                child: Text(
                  'Forgot My Password',

                  style: TextStyle(
                    color: Colors.grey,

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
                    onPressed: isLoginActive ? loginUser : null,

                    style: ElevatedButton.styleFrom(
                      backgroundColor: isLoginActive
                          ? Colors.black
                          : Color(0xFF2563EB),

                      foregroundColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
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
                    onPressed: () {
                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
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
    );
  }
}
