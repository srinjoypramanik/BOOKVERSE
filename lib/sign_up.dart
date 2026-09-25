import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'sign_in.dart';


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

  void checkSignupButton() {
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
    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Password doesn't match/\n Please Try Again."),
        ),
      );

      return;
    }

    try {

      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: email.trim(),

            password: password.trim(),
          );

      String uid = userCredential.user!.uid;

      await FirebaseFirestore.instance.collection("users").doc(uid).set({
        "name": name.trim(),

        "phone": phone.trim(),

        "email": email.trim(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Account Created Successfully",
          ),
        ),
      );

      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message ?? "Signup Failed",)));
    }
  }

  @override
  Widget build(BuildContext context) {
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const SizedBox(height: 20),

              Center(
                child: Image.asset('assets/images/bookverse.png', height: 100),
              ),

              const SizedBox(height: 20),

              const Text(
                "Name:",

                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              TextField(
                onChanged: (value) {
                  name = value;

                  checkSignupButton();
                },

                decoration: InputDecoration(
                  hintText: "Enter your name",

                  filled: true,

                  fillColor: Color(0xFFF1F1F5),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),

                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Mobile Number:",

                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              TextField(
                keyboardType: TextInputType.phone,

                onChanged: (value) {
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
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Email Address:",

                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              TextField(
                onChanged: (value) {
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
                ),
              ),

              const SizedBox(height: 15),
              const Text(
                "Password:",

                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              TextField(
                obscureText: true,

                onChanged: (value) {
                  password = value;

                  checkSignupButton();
                },

                decoration: InputDecoration(
                  hintText: "Enter password",

                  filled: true,

                  fillColor: Color(0xFFF1F1F5),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),

                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Confirm Password:",

                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              TextField(
                obscureText: true,

                onChanged: (value) {
                  confirmPassword = value;

                  checkSignupButton();
                },

                decoration: InputDecoration(
                  hintText: "Confirm password",

                  filled: true,

                  fillColor: Color(0xFFF1F1F5),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),

                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Center(
                child: SizedBox(
                  width: 250,

                  height: 60,

                  child: ElevatedButton(
                    onPressed: isSignupActive ? signupUser : null,

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,

                      foregroundColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                    child: const Text(
                      "Sign Up",

                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    const Text(
                      "Already have an account? ",

                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,

                          MaterialPageRoute(
                            builder: (context) => const SignIn(),
                          ),
                        );
                      },

                      child: const Text(
                        "Login",

                        style: TextStyle(
                          fontSize: 16,

                          color: Colors.blue,

                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
