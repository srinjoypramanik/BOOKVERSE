import 'CartPage.dart';
import 'package:flutter/material.dart';



class Orderconfirmationpage extends StatefulWidget {
  const Orderconfirmationpage({super.key});

  @override
  State<Orderconfirmationpage> createState() => _OrderconfirmationpageState();
}

class _OrderconfirmationpageState extends State<Orderconfirmationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
       body: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(width: double.infinity,),

              Icon(
                Icons.check_circle_outline_rounded,
                size: 100,
              ),
              
              
              Container(
                child: 
                ElevatedButton(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder:(context)=>const Cart()));
                            },

                          style: ElevatedButton.styleFrom(
                            fixedSize: Size.fromWidth(350),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text('CONTINUE SHOPPPPING',
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