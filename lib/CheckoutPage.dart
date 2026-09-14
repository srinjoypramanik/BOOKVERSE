import 'package:flutter/material.dart';
import 'OrderConfirmationPage.dart';
import 'CartPage.dart';
import 'homescreen.dart';
import 'sign_in.dart';

class Checkoutpage extends StatefulWidget {
  const Checkoutpage({super.key});

  @override
  State<Checkoutpage> createState() => _CheckoutpageState();
}

class _CheckoutpageState extends State<Checkoutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
    
        backgroundColor: Colors.white,
        centerTitle: true,

        leading: IconButton(
          onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>const Cart()));},
           icon: const Icon(Icons.arrow_back,color: Colors.black,size:35)
           ),
            title: const Text('CHECKOUT DETAILS',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
      ),
          


          body:
          
        
           Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          



            children: [
              

              Container(
                
              
                child: Padding(padding:EdgeInsets.symmetric(horizontal: 20),
                child: Column( mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                
              Text(
                "Reciver's Name",

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),




              SizedBox(height: 5),



              TextField(

                decoration: InputDecoration(

                  hintText: "Enter your Name",

                  filled: true,

                  fillColor: Colors.white,


                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(0),

                    borderSide: BorderSide(color: Colors.black,width:3),

                  ),


                  contentPadding: EdgeInsets.symmetric(

                    horizontal: 20,

                    vertical: 18,

                  ),

                ),

              ),
              SizedBox(height: 15),
              Text(
                "Phone Number",

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),




              SizedBox(height: 5),



              TextField(

                decoration: InputDecoration(

                  hintText: "01XXXXXXXXXX",

                  filled: true,

                  fillColor: Colors.white,


                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(0),

                    borderSide:  BorderSide(color: Colors.black,width:3),

                  ),


                  contentPadding: EdgeInsets.symmetric(

                    horizontal: 20,

                    vertical: 18,

                  ),

                ),

              ),
              SizedBox(height: 15),
              Text(
                "Address",

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),




              SizedBox(height: 5),



              TextField(

                decoration: InputDecoration(

                  hintText: "Road no. , Area , City ",

                  filled: true,

                  fillColor: Colors.white,


                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(0),

                    borderSide:  BorderSide(color: Colors.black,width:3),

                  ),


                  contentPadding: EdgeInsets.symmetric(

                    horizontal: 20,

                    vertical: 18,

                  ),

                ),

              ),
              SizedBox(height: 20),
              Container(
        
                
                decoration: BoxDecoration(color: Colors.white,border:  Border.all(color: const Color.fromARGB(255, 158, 155, 155),width: 2)),
                width: double.infinity,
                
                
                child: Padding(padding:EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column( mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                
              Text(
                "PYment methods",

                style: TextStyle(

                  fontSize: 25,

                  fontWeight: FontWeight.bold,

                ),

              ),
              
              RadioGroup(onChanged:(value){} , child: 
              Column(
                children: [
                  Row(
                    children: [
                  Radio(value: "bikash"),
                  Text(
                "bikash",

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),
                  
                    ]
                  ),
                   Row(
                    children: [
                  Radio(value: "cash on delivery"),
                  Text(
                "cash on delivery",

                style: TextStyle(

                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),

              ),
                  
                    ]
                  )
                ],
              )
              

              
              ),
              
                ],
      
                ),
              ),
              
              ),
              
              SizedBox(height: 80),
                ],
                ),
              ),
              ),

               SizedBox(width: double.infinity,),
              
                
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
            ]
            

          
          
          ),

          bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,

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