import 'package:flutter/material.dart';
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
          onPressed: (){},
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
              

              decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 2)),
              child: Column(
                

                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)) ,
                  
                    onPressed:(){},
                    
                    child: const Text('PROCEED TO CHECKOUT',textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),))
                ],

              ),
            ),
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