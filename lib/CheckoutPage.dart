import 'package:flutter/material.dart';
import 'OrderConfirmationPage.dart';
import 'CartPage.dart';
import 'homescreen.dart';
import 'sign_in.dart';
import 'profile_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Checkoutpage extends StatefulWidget {
  const Checkoutpage({super.key});

  @override
  State<Checkoutpage> createState() => _CheckoutpageState();
}

class _CheckoutpageState extends State<Checkoutpage> {

  // Text field controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  // Selected payment method
  String? selectedPaymentMethod;

  // Loading state
  bool isSaving = false;

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }

  // Function to save checkout information
  Future<void> saveCheckoutDetails() async {

    // Get current user
    User? user = FirebaseAuth.instance.currentUser;

    // Check if user is logged in
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please sign in first."),
        ),
      );
      return;
    }


    String name = nameController.text.trim();
    String phone = phoneController.text.trim();
    String address = addressController.text.trim();

    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please Enter Your Information."),
        ),
      );
      return;
    }

    if (name.contains('/')) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Name cannot contain '/'."),
        ),
      );
      return;
    }

    if (phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter your phone number."),
        ),
      );
      return;
    }

    if (phone.length < 11) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter a valid phone number."),
        ),
      );
      return;
    }

    if (address.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter your address."),
        ),
      );
      return;
    }

    if (selectedPaymentMethod == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please select a payment method."),
        ),
      );
      return;
    }

    

    

      await FirebaseFirestore.instance
          .collection("user-cart")
          .doc(user.email)
          .collection("checkout")
          .doc(name)
          .set({
        "userName": name,
        "phoneNumber": phone,
        "address": address,
        "paymentMethod": selectedPaymentMethod,
      });

      if (!mounted) return;

      
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Orderconfirmationpage(


            name: name,
            phone: phone,
            address: address,
            paymentMethod: selectedPaymentMethod! ,
            
          ),
        ),
      );

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,

        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Cart(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 35,
          ),
        ),

        title: const Text(
          'CHECKOUT DETAILS',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(height: 65),

                      const Text(
                        "Reciver's Name:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      TextField(
                        controller: nameController,

                        decoration: InputDecoration(
                          hintText: "Enter your Name",
                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 3,
                            ),
                          ),

                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      const Text(
                        "Reciver's Number:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      TextField(
                        controller: phoneController,

                        keyboardType: TextInputType.phone,

                        decoration: InputDecoration(
                          hintText: "01XXXXXXXXXX",
                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 3,
                            ),
                          ),

                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      const Text(
                        "Reciver's Address:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      TextField(
                        controller: addressController,

                        maxLines: 2,

                        decoration: InputDecoration(
                          hintText: "Road no. , Area , City",
                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 3,
                            ),
                          ),

                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              158,
                              155,
                              155,
                            ),
                            width: 2,
                          ),
                        ),

                        width: double.infinity,

                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              const Text(
                                "PAYMENT METHODS",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 10),

                              RadioGroup<String>(
                                    groupValue: selectedPaymentMethod,
                                    onChanged: (value) {
                                      setState(() {
                                          selectedPaymentMethod = value;
                                      });
                                    

                                    },

                                    child: Column(
                                      children: [

                                        Row(
                                          children: [
                                            const Radio<String>(
                                              value: "Bkash",
                                            ),
                                            

                                            

                                            
                                            Image.asset('assets/images/images.png',
                                                height: 50,width: 70,)
                                           
                                           
                                         
                                         

                                            
                                          ]
                                        ),

                                        Row(
                                          children: [
                                            const Radio<String>(
                                              value: "Cash on Delivery",
                                            ),

                                            const Text(
                                              "Cash on Delivery",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                              
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Confirm Purchase button
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),

            child: SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: isSaving
                    ? null
                    : () {
                        saveCheckoutDetails();
                      },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,

                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),

                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),

                child: isSaving
                    ? const SizedBox(
                        height: 22,
                        width: 22,

                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : const Text(
                        'CONFIRM PURCHASE',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),

      
      bottomNavigationBar: StreamBuilder<QuerySnapshot>(
        stream: FirebaseAuth.instance.currentUser == null
            ? null
            : FirebaseFirestore.instance
                .collection("user-cart")
                .doc(FirebaseAuth.instance.currentUser!.email)
                .collection("items")
                .snapshots(),

        builder: (context, snapshot) {

          int cartCount = 0;

          if (snapshot.hasData) {

            for (var document in snapshot.data!.docs) {

              final data =
                  document.data() as Map<String, dynamic>;

              int quantity =
                  (data['quantity'] as num?)?.toInt() ?? 0;

              cartCount += quantity;
            }
          }

          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,

            onTap: (index) {

              if (index == 3) {

                User? user =
                    FirebaseAuth.instance.currentUser;

                if (user != null) {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const ProfilePage(),
                    ),
                  );

                } else {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const SignIn(),
                    ),
                  );
                }

              } else if (index == 2) {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const Cart(),
                  ),
                );

              } else if (index == 1) {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const HomeScreen(),
                  ),
                );

              } else if (index == 0) {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const HomeScreen(),
                  ),
                );
              }
            },

            items: [

              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                  color: Colors.black,
                ),
                label: 'HOME',
              ),

              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                label: 'SEARCH',
              ),

              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,

                  children: [

                    const Icon(
                      Icons.shopping_bag_rounded,
                      size: 30,
                      color: Colors.black,
                    ),

                    if (cartCount > 0)

                      Positioned(
                        right: -8,
                        top: -8,

                        child: Container(
                          padding: const EdgeInsets.all(5),

                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),

                          child: Text(
                            '$cartCount',

                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),

                label: 'CART',
              ),

              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_rounded,
                  size: 30,
                  color: Colors.black,
                ),
                label: 'ACCOUNT',
              ),
            ],
          );
        },
      ),
    );
  }
}

























