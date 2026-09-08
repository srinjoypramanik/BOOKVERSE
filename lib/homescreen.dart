import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'sign_in.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.black, size: 35),
        ),

        titleSpacing: 0,
        title: Row(
          children: [Image.asset('assets/images/bookverse.png', height: 43)],
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),

          const SizedBox(width: 6),
        ],
      ),







      body: Center(
        child: Text(
          'Home Screen',
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
      ),







      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        // onTap: (index){
        //
        // },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,
                size: 30,
                color: Colors.black,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined,
                size: 30,
                color:Colors.black,
            ),
            label: 'STORE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded,
              size: 30,
              color:Colors.black,
            ),
            label: 'CART',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded,
              size: 30,
              color:Colors.black,
            ),
            label: 'AUTH',
          ),
        ],
      ),
    );
  }
}
