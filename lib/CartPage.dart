import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Checkoutpage.dart';
import 'homescreen.dart';
import 'sign_in.dart';
import 'profile_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() =>  CartState();
}

class  CartState extends State<Cart> {
 
 
  @override
  

  Widget build(BuildContext context) {

     User?user=FirebaseAuth.instance.currentUser;
  if(user==null){
     return const SignIn();
      
    
  }

bool cartISfull = true;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
    
        backgroundColor: Colors.white,
        centerTitle: true,

        leading: IconButton(
          onPressed: (){ Navigator.push(context,MaterialPageRoute(builder:(context)=>const HomeScreen()));},
           icon: const Icon(Icons.arrow_back,color: Colors.black,size:35)
           ),

        

        title:  Text('CART',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,),),
        
        actions: [TextButton(
          onPressed: (){},
          child:const Text('CLEAR',style: TextStyle(color:Color.fromARGB(255, 125, 124, 124),fontSize: 15, fontWeight: FontWeight.bold),)  ,)
          ],
        ),


        body: Column(
          children: [
            Expanded(child:
               
              
                SafeArea(
                  child: 
                  StreamBuilder(
                    stream: FirebaseFirestore.instance.collection("user-cart").doc(FirebaseAuth.instance.currentUser!.email).collection("items").snapshots(), 
                    builder: (BuildContext context, AsyncSnapshot <QuerySnapshot> snapshot)
                    
                    {

                      if(!snapshot.hasData||snapshot.data!.docs.isEmpty)
                      {
                       cartISfull=false;
                        return const Center(
                          child: Text("empty cart"),
                        );
                      }

                      else{ cartISfull=true;
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context,index){
                          DocumentSnapshot documentSnapshot =snapshot.data!.docs[index];


                          //card starts here___________________________________
                          return Card(
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                            elevation: 1,
                            child:
                           ListTile(
                            leading: SizedBox(
                              child: 
                              Image.asset(documentSnapshot['image'],height: 80,width: 40,)),
                            
                            //___________________ ADD quantity and price HERE _____________________________________//
                            
                            title: 
                          
                            Text(documentSnapshot['title'],
                            ),
                           
                             //___________________ ADD quantity and price HERE _____________________________________//
                            trailing: GestureDetector(
                              child: Icon(Icons.delete),
                              onTap: (){
                                FirebaseFirestore
                                .instance
                                .collection("user-cart")
                                .doc(FirebaseAuth.
                                instance.
                                currentUser!.
                                email)
                                .collection("items")
                                .doc(documentSnapshot.
                                id)
                                .delete();
                              },
                            )

                          )
                          );

                          //card ends__________________________________________
                        }
                        );

                      

                    }}) ,)


             
            
           
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
                      
                       Text('TOTAL AMOUNT  :                         ',style: TextStyle(color:Color.fromARGB(255, 0, 0, 0),fontSize: 18,fontWeight: FontWeight.bold),),
                       Text('0/-', style: TextStyle(color:Color.fromARGB(255, 0, 0, 0),fontSize: 18,fontWeight: FontWeight.bold),),
                    ]  
                    ),
                    ),
                    ElevatedButton(
                            onPressed: (){

                               
                              if(cartISfull==true)
                              { 
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const Checkoutpage() ));

                               

                            }

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

      bottomNavigationBar: StreamBuilder<QuerySnapshot>(
        stream: FirebaseAuth.instance.currentUser == null
            ? null : FirebaseFirestore.instance
            .collection("user-cart")
            .doc(FirebaseAuth.instance.currentUser!.email)
            .collection("items")
            .snapshots(),
        builder: (context, snapshot) {
          int cartCount = 0;
          if (snapshot.hasData) {
            for (var document in snapshot.data!.docs) {
              final data = document.data() as Map<String, dynamic>;
              int quantity = (data['quantity'] as num?)?.toInt() ?? 0;
              cartCount += quantity;
            }
          }
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,

            onTap: (index){
              if(index == 3){
                User? user = FirebaseAuth.instance.currentUser;
                if(user != null){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const ProfilePage(),
                    ),
                  );
                }
                else{
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const SignIn(),
                    ),
                  );
                }
              }
              else if(index == 2){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> const Cart(),
                  ),
                );
              }









        );
   }
  }