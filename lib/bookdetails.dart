import 'package:bookverse/sign_in.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget{
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back,
              color: Colors.black,
              size: 35),
        ),

        centerTitle: true,
        title: Text('BOOK METRICS',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
           ),
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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children:[

           SizedBox(height: 16),
           Row(
            children: [
            SizedBox(width: 12),
            Container(
              color: Colors.black,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),

              child: Text('BRAND NEW',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  ),
                ),
              ),
            ],
           ),

           


         ],
        ),
       ),






      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,

        // Tanzid........................................
        onTap: (index){
          if(index == 3){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=> const SignIn()
                )
            );
          }
        },
        //Tanzid.........................................

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