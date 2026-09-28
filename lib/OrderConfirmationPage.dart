import 'package:bookverse/homescreen.dart';
import 'package:flutter/material.dart';

class Orderconfirmationpage extends StatefulWidget {
  final String name;
  final String phone;
  final String address;
  final String paymentMethod;
  

  const Orderconfirmationpage({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
    required this.paymentMethod,
    
  });

  @override
  State<Orderconfirmationpage> createState() =>
      _OrderconfirmationpageState();
}

class _OrderconfirmationpageState extends State<Orderconfirmationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 40,
          ),

          const Icon(
            Icons.check_circle_outline_rounded,
            size: 150,
          ),

          const SizedBox(
            height: 10,
          ),

          const Text(
            'YOUR ORDER HAS CONFIRMED',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          Text(
            'Name: ${widget.name}',
            style: const TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 10),

          Text(
            'Phone: ${widget.phone}',
            style: const TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 10),

          Text(
            'Address: ${widget.address}',
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 10),

          Text(
            'Payment: ${widget.paymentMethod}',
            style: const TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 10),

          // Text(
          //   'Total: ${widget.totalPrice} Tk',
          //   style: const TextStyle(
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),

          const SizedBox(height: 25),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size.fromWidth(350),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            child: const Text(
              'CONTINUE SHOPPING',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}