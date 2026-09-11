import 'package:flutter/material.dart';
import 'OrderConfirmationPage.dart';
import 'CartPage.dart';

class Checkoutpage extends StatefulWidget {
  const Checkoutpage({super.key});

  @override
  State<Checkoutpage> createState() => _CheckoutpageState();
}

class _CheckoutpageState extends State<Checkoutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    
        backgroundColor: Colors.white,
        centerTitle: true,

        leading: IconButton(
          onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Cart()));},
           icon: const Icon(Icons.arrow_back,color: Colors.black,size:35)
           ),
            title: const Text('CHECKOUT DETAILS',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
      ),
          


          body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,

            children: [
               SizedBox(width: double.infinity,),
              Container(
                child: 
                ElevatedButton(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder:(context)=>const Orderconfirmationpage()));
                            },

                          style: ElevatedButton.styleFrom(
                           // fixedSize: Size.fromWidth(350),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text('CONFIRM PURCHASE',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
              )
            ],
          ),

          bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            size: 30,
            color: Colors.black,
          ),
          label: 'HOME',
        ),

        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_outlined,
            size: 30,
            color: Colors.black,
          ),
          label: 'STORE',
        ),

        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_rounded,
            size: 30,
            color: Colors.black,
          ),
          label: 'CART',
        ),

        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_2_rounded,
            size: 30,
            color: Colors.black,
          ),
          label: 'AUTH',
        ),
      ],
    ),








    );
  }
}