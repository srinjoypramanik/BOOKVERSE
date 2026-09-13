import 'package:flutter/material.dart';
import 'Checkoutpage.dart';
import 'homescreen.dart';
import 'sign_in.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() =>  CartState();
}

class  CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    
        backgroundColor: Colors.white,
        centerTitle: true,

        leading: IconButton(
          onPressed: (){ Navigator.push(context,MaterialPageRoute(builder:(context)=>const HomeScreen()));},
           icon: const Icon(Icons.arrow_back,color: Colors.black,size:35)
           ),

        

        title: const Text('Bag',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
        
        actions: [TextButton(
          onPressed: (){},
          child:const Text('CLEAR',style: TextStyle(color:Color.fromARGB(255, 125, 124, 124),fontSize: 25),)  ,)
          ],
        ),


        body: Column(
          children: [
            Expanded(child:SingleChildScrollView(
              child: Column(
               children:[],
              )
            ) 
          ),

            Container( 
              width:double.infinity,
              height: 120,
              

              decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 158, 155, 155),width: 2)),
              child: Column(
                

                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      width:double.infinity,
                      
                      child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      
                       Text('TOTAL  AMOUNT  :  ',style: TextStyle(color:Color.fromARGB(255, 0, 0, 0),fontSize: 20),),
                       Text('00/=')
                    ]  
                    ),
                    ),
                    ElevatedButton(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder:(context)=>const Checkoutpage()));
                            },

                          style: ElevatedButton.styleFrom(
                            fixedSize: Size.fromWidth(350),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text('PROCEED TO CHECKOUT',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                  ]
                 

              ),
            ),
          ],

        ),




      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         backgroundColor: Colors.white,
            // Tanzid........................................

// Tanzid........................................
        onTap: (index){
          if(index == 3){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> const SignIn(),
              ),
            );
          }

        //Tanzid.........................................
        //Waizur.........................................
        else if(index == 2){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=> const Cart(),
                ),
            );
          }

          else if(index == 0){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=> const HomeScreen(),
                ),
            );
          }
        },
        //Waizur.........................................

        //Tanzid.........................................


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