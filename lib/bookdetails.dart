import 'package:bookverse/homescreen.dart';
import 'package:bookverse/sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'CartPage.dart';
import 'profile_page.dart';

class BookDetails extends StatelessWidget{
  final String title;
  final String author;
  final double price;
  final String category;
  final String description;
  final String image;

  const BookDetails({
    super.key,
    required this.title,
    required this.author,
    required this.price,
    required this.category,
    required this.description,
    required this.image,
  });

  //waizur________________
  Future addToCart()async{
    final FirebaseAuth authoo = FirebaseAuth.instance;
    var currentUserrr = authoo.currentUser;
    CollectionReference collectionREF = FirebaseFirestore.instance.collection("user-cart");
    DocumentReference itemREF= collectionREF.doc(currentUserrr!.email).collection("items").doc(title);
    DocumentSnapshot itemSNAP =await itemREF.get();
   //quantity logic____
    if(itemSNAP.exists){
      int quantity=itemSNAP['quantity'];
      await itemREF.update({"quantity": quantity+1,});
    }
    else{
      await itemREF.set(
    
      {
        "title":title,
        "image":image,
        "price":price,
        "quantity":1,
      }
    );
  }
  //quantity logic____
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
           icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 35),
        ),

        centerTitle: true,
        title: Text('BOOK DETAILS',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
           ),
          ),
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
                  fontSize: 13,
                  ),
                ),
              ),
            ],
           ),
            SizedBox(height: 16),
           Row(
             children: [
               SizedBox(width: 12),

               Expanded(child: Image.asset(
                 image,
                 height: 450,
                 fit: BoxFit.contain,
                  ),
               ),
               SizedBox(width: 12),
             ],
           ),
           SizedBox(height: 16),
           Row(
             children: [
               SizedBox(width: 12),

               Expanded(
                 child: Text(
                   title,
                   maxLines: 2,
                   overflow: TextOverflow.ellipsis,
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),

               SizedBox(width: 12),
             ],
           ),

           SizedBox(height: 8),
           Row(
             children: [
               SizedBox(width: 12),
               Text(author,
               style: TextStyle(
                 color: Colors.grey,
                 fontSize: 15,
                 fontWeight: FontWeight.bold
                ),
               ),
             ],
           ),

           SizedBox(height: 6),

           Divider(),

           SizedBox(height: 6),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   SizedBox(width: 12),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('OFFER PRICE',
                         style: TextStyle(
                           color: Colors.grey,
                           fontWeight: FontWeight.bold,
                           fontSize: 14,
                         ),
                       ),
                       SizedBox(height: 8),
                       Text('\$${price.toStringAsFixed(2)}',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 22,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ],
                   ),
                 ],
               ),

               Row(
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Text('CATAGORY',
                         style: TextStyle(
                           color: Colors.grey,
                           fontWeight: FontWeight.bold,
                           fontSize: 14,
                         ),
                       ),
                       SizedBox(height: 8),
                       Text(category,
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 18,
                         ),
                       ),
                     ],
                   ),
                   SizedBox(width: 12),
                 ],
               ),
             ],
           ),

           SizedBox(height: 6),

           Divider(),

           SizedBox(height: 6),

           Row(
             children: [
               SizedBox(width: 12),
               Text('DESCRIPTION / INFO',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ],
           ),

           SizedBox(height: 12),
           Row(
             children: [
               SizedBox(width: 12),
               Expanded(child:
               Text(description,
                 style: TextStyle(
                   color: Colors.grey,
                   fontSize: 18,
                   height: 1.70,

                 ),
               ),
               ),
                SizedBox(width: 12),
             ],

           ),

           SizedBox(height: 16),
           Row(
             children: [
               SizedBox(width: 12),

               Expanded(
                   child: ElevatedButton(
                     onPressed: () async {
                       await addToCart();

                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(
                           content: Text('Book Added to Shopping Cart'),
                           duration: Duration(seconds: 2),
                         ),
                       );
                     },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.black,
                       foregroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.zero,
                       ),
                     ),
                     child: Text('+ADD TO SHOPPING CART',
                     style: TextStyle(
                       fontSize: 15,
                      ),
                     ),
                   ),
                ),
               SizedBox(width: 12),
             ],
           ),
           SizedBox(height: 50),
         ],
        ),
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

              else if(index == 1){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> const HomeScreen(),
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

            items: [
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
                  color: Colors.black,
                ),
                label: 'SEARCH',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(Icons.shopping_bag_rounded,
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
                          child: Text('$cartCount',
                            style: TextStyle(
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
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded,
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




