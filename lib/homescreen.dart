import 'package:flutter/material.dart';
import 'bookdetails.dart';
import 'sign_in.dart';
import 'CartPage.dart';
import 'profile_page.dart';
import 'drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  }
  class _HomeScreenState extends State<HomeScreen>{

    TextEditingController searchController = TextEditingController();
    String searchText = '';

    String selectedCategory = 'ALL BOOKS';

    Stream<QuerySnapshot> getBooks(){
    return FirebaseFirestore.instance
        .collection('books')
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      appBar: AppBar(
        backgroundColor: Colors.white,

        titleSpacing: 0,
        title: Row(
          children: [Image.asset('assets/images/bookverse.png',
              height: 47)
          ],
        ),


        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context)=>const ProfilePage(),
                ),
              );
            },
            icon: const Icon(
              Icons.person_3_rounded,
              color: Colors.black,
              size: 35,
            ),
          ),
          const SizedBox(width: 6),
        ],
      ),

      drawer: const AppDrawer(),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: searchController,

                onChanged: (value) {
                  setState(() {
                    searchText = value.toLowerCase();
                  });
                },

                decoration: InputDecoration(
                  hintText: 'Search books, authors...',
                  filled: true,
                  fillColor: Colors.white,

                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),

                  suffixIcon: searchText.isNotEmpty
                      ? IconButton(
                    onPressed: () {
                      searchController.clear();

                      setState(() {
                        searchText = '';
                      });
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                  )
                      : null,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),



            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  SizedBox(width: 10),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedCategory = 'ALL BOOKS';
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: selectedCategory == 'ALL BOOKS'
                            ? Colors.black : Colors.white,

                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),

                      child: Text('ALL BOOKS',
                        style: TextStyle(
                          color: selectedCategory == 'ALL BOOKS'
                              ? Colors.white
                              : Colors.black,

                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),

                    ),
                  ),

                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedCategory = 'COMPUTER SCIENCE';
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: selectedCategory == 'COMPUTER SCIENCE'
                            ? Colors.black
                            : Colors.white,

                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),

                      child: Text('COMPUTER SCIENCE',
                        style: TextStyle(
                          color: selectedCategory == 'COMPUTER SCIENCE'
                              ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedCategory = 'ELECTRICAL & ELECTRONICS';
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: selectedCategory=='ELECTRICAL & ELECTRONICS'
                            ?Colors.black:Colors.white,

                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Text('ELECTRICAL & ELECTRONICS',
                        style: TextStyle(
                          color: selectedCategory=='ELECTRICAL & ELECTRONICS'
                              ?Colors.white:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Text('MATHEMATICS',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: 10),
            Padding(padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('AVAILABLE HARDCOPIES (8)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: const Text('Filter',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                  ),
                ],
              ),
            ),

            //Firestore Book1
            StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('books')
                  .doc('algo_001')
                  .snapshots(),

              builder: (context, snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if(snapshot.hasError){
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if(!snapshot.hasData||!snapshot.data!.exists){
                  return const Center(
                    child: Text('Book not found'),
                  );
                }
                final data=snapshot.data!.data() as Map<String, dynamic>;

                if (selectedCategory != 'ALL BOOKS' &&
                    data['category'] != selectedCategory) {
                  return SizedBox();
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetails(
                          title: data['title'].toString(),
                          author: data['author'].toString(),
                          price: '\$${data['price']}.00',
                          category: data['category'].toString(),
                          description: data['description'].toString(),
                          image: data['imageUrl'].toString(),
                        ),
                      ),
                    );
                  },

                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),

                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      children: [
                        Image.asset(data['imageUrl'],
                          width: 110,
                          height: 198,
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Text('BRAND NEW',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),

                                  Text('\$${data['price']}.00',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),
                              Text(data['title'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 6),
                              Text(data['author'],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              SizedBox(height: 1),
                              Divider(thickness: 0.5,),
                              SizedBox(height: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data['category']=='COMPUTER SCIENCE'
                                        ? 'COMPUTER\nSCIENCE'
                                        : data['category']=='ELECTRICAL & ELECTRONICS'
                                        ? 'ELECTRICAL &\nELECTRONICS'
                                        : data['category'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),

                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),

                                    child: Text('+ADD TO CART',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            //Firestore Book2
            StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('books')
                  .doc('ai_001')
                  .snapshots(),

              builder: (context, snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if(snapshot.hasError){
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if(!snapshot.hasData||!snapshot.data!.exists){
                  return const Center(
                    child: Text('Book not found'),
                  );
                }
                final data=snapshot.data!.data() as Map<String, dynamic>;

                if (selectedCategory != 'ALL BOOKS' &&
                    data['category'] != selectedCategory) {
                  return const SizedBox();
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetails(
                          title: data['title'].toString(),
                          author: data['author'].toString(),
                          price: '\$${data['price']}.00',
                          category: data['category'].toString(),
                          description: data['description'].toString(),
                          image: data['imageUrl'].toString(),
                        ),
                      ),
                    );
                  },

                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),

                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      children: [
                        Image.asset(data['imageUrl'],
                          width: 110,
                          height: 198,
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Text('BRAND NEW',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),

                                  Text('\$${data['price']}.00',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),
                              Text(data['title'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 6),
                              Text(data['author'],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              SizedBox(height: 1),
                              Divider(thickness: 0.5,),
                              SizedBox(height: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data['category']=='COMPUTER SCIENCE'
                                      ? 'COMPUTER\nSCIENCE'
                                      : data['category']=='ELECTRICAL & ELECTRONICS'
                                      ? 'ELECTRICAL &\nELECTRONICS'
                                      : data['category'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),

                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),

                                    child: Text('+ADD TO CART',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            //Firestore Book3
            StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('books')
                  .doc('fec_001')
                  .snapshots(),

              builder: (context, snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if(snapshot.hasError){
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if(!snapshot.hasData||!snapshot.data!.exists){
                  return const Center(
                    child: Text('Book not found'),
                  );
                }
                final data=snapshot.data!.data() as Map<String, dynamic>;

                if (selectedCategory != 'ALL BOOKS' &&
                    data['category'] != selectedCategory) {
                  return const SizedBox();
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetails(
                          title: data['title'],
                          author: data['author'],
                          price: '\$${data['price']}.00',
                          category: data['category'],
                          description: data['description'],
                          image: data['imageUrl'],
                        ),
                      ),
                    );
                  },

                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),

                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      children: [
                        Image.asset(data['imageUrl'],
                          width: 110,
                          height: 198,
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Text('BRAND NEW',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),

                                  Text('\$${data['price']}.00',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),
                              Text(data['title'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 6),
                              Text(data['author'],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              SizedBox(height: 1),
                              Divider(thickness: 0.5,),
                              SizedBox(height: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data['category']=='COMPUTER SCIENCE'
                                      ? 'COMPUTER\nSCIENCE'
                                      : data['category']=='ELECTRICAL & ELECTRONICS'
                                      ? 'ELECTRICAL &\nELECTRONICS'
                                      : data['category'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),

                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),

                                    child: Text('+ADD TO CART',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            //Firestore Book4
            StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('books')
                  .doc('edct_001')
                  .snapshots(),

              builder: (context, snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if(snapshot.hasError){
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if(!snapshot.hasData||!snapshot.data!.exists){
                  return const Center(
                    child: Text('Book not found'),
                  );
                }
                final data=snapshot.data!.data() as Map<String, dynamic>;

                if (selectedCategory != 'ALL BOOKS' &&
                    data['category'] != selectedCategory) {
                  return const SizedBox();
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetails(
                          title: data['title'],
                          author: data['author'],
                          price: '\$${data['price']}.00',
                          category: data['category'],
                          description: data['description'],
                          image: data['imageUrl'],
                        ),
                      ),
                    );
                  },

                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),

                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      children: [
                        Image.asset(data['imageUrl'],
                          width: 110,
                          height: 198,
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Text('BRAND NEW',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),

                                  Text('\$${data['price']}.00',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),
                              Text(data['title'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 6),
                              Text(data['author'],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              SizedBox(height: 1),
                              Divider(thickness: 0.5,),
                              SizedBox(height: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data['category']=='COMPUTER SCIENCE'
                                      ? 'COMPUTER\nSCIENCE'
                                      : data['category']=='ELECTRICAL & ELECTRONICS'
                                      ? 'ELECTRICAL &\nELECTRONICS'
                                      : data['category'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),

                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),

                                    child: Text('+ADD TO CART',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            //Firestore Book5
            StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('books')
                  .doc('sicp_001')
                  .snapshots(),

              builder: (context, snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if(snapshot.hasError){
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if(!snapshot.hasData||!snapshot.data!.exists){
                  return const Center(
                    child: Text('Book not found'),
                  );
                }
                final data=snapshot.data!.data() as Map<String, dynamic>;

                if (selectedCategory != 'ALL BOOKS' &&
                    data['category'] != selectedCategory) {
                  return const SizedBox();
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetails(
                          title: data['title'],
                          author: data['author'],
                          price: '\$${data['price']}.00',
                          category: data['category'],
                          description: data['description'],
                          image: data['imageUrl'],
                        ),
                      ),
                    );
                  },

                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),

                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      children: [
                        Image.asset(data['imageUrl'],
                          width: 110,
                          height: 198,
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Text('BRAND NEW',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),

                                  Text('\$${data['price']}.00',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),
                              Text(data['title'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 6),
                              Text(data['author'],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              SizedBox(height: 1),
                              Divider(thickness: 0.5,),
                              SizedBox(height: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data['category']=='COMPUTER SCIENCE'
                                      ? 'COMPUTER\nSCIENCE'
                                      : data['category']=='ELECTRICAL & ELECTRONICS'
                                      ? 'ELECTRICAL &\nELECTRONICS'
                                      : data['category'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),

                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),

                                    child: Text('+ADD TO CART',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            //Firestore Book6
            StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('books')
                  .doc('cc_001')
                  .snapshots(),

              builder: (context, snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if(snapshot.hasError){
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if(!snapshot.hasData||!snapshot.data!.exists){
                  return const Center(
                    child: Text('Book not found'),
                  );
                }
                final data=snapshot.data!.data() as Map<String, dynamic>;

                if (selectedCategory != 'ALL BOOKS' &&
                    data['category'] != selectedCategory) {
                  return const SizedBox();
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetails(
                          title: data['title'],
                          author: data['author'],
                          price: '\$${data['price']}.00',
                          category: data['category'],
                          description: data['description'],
                          image: data['imageUrl'],
                        ),
                      ),
                    );
                  },

                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),

                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      children: [
                        Image.asset(data['imageUrl'],
                          width: 110,
                          height: 198,
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Text('BRAND NEW',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),

                                  Text('\$${data['price']}.00',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),
                              Text(data['title'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 6),
                              Text(data['author'],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              SizedBox(height: 1),
                              Divider(thickness: 0.5,),
                              SizedBox(height: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data['category']=='COMPUTER SCIENCE'
                                      ? 'COMPUTER\nSCIENCE'
                                      : data['category']=='ELECTRICAL & ELECTRONICS'
                                      ? 'ELECTRICAL &\nELECTRONICS'
                                      : data['category'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),

                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),

                                    child: Text('+ADD TO CART',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            //Firestore Book7
            StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('books')
                  .doc('mec_001')
                  .snapshots(),

              builder: (context, snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if(snapshot.hasError){
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if(!snapshot.hasData||!snapshot.data!.exists){
                  return const Center(
                    child: Text('Book not found'),
                  );
                }
                final data=snapshot.data!.data() as Map<String, dynamic>;

                if (selectedCategory != 'ALL BOOKS' &&
                    data['category'] != selectedCategory) {
                  return const SizedBox();
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetails(
                          title: data['title'],
                          author: data['author'],
                          price: '\$${data['price']}.00',
                          category: data['category'],
                          description: data['description'],
                          image: data['imageUrl'],
                        ),
                      ),
                    );
                  },

                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),

                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      children: [
                        Image.asset(data['imageUrl'],
                          width: 110,
                          height: 198,
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Text('BRAND NEW',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),

                                  Text('\$${data['price']}.00',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),
                              Text(data['title'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 6),
                              Text(data['author'],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              SizedBox(height: 1),
                              Divider(thickness: 0.5,),
                              SizedBox(height: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data['category']=='COMPUTER SCIENCE'
                                      ? 'COMPUTER\nSCIENCE'
                                      : data['category']=='ELECTRICAL & ELECTRONICS'
                                      ? 'ELECTRICAL &\nELECTRONICS'
                                      : data['category'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),

                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),

                                    child: Text('+ADD TO CART',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            //Firestore Book8
            StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('books')
                  .doc('aoe_001')
                  .snapshots(),

              builder: (context, snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if(snapshot.hasError){
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if(!snapshot.hasData||!snapshot.data!.exists){
                  return const Center(
                    child: Text('Book not found'),
                  );
                }
                final data=snapshot.data!.data() as Map<String, dynamic>;

                if (selectedCategory != 'ALL BOOKS' &&
                    data['category'] != selectedCategory) {
                  return const SizedBox();
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetails(
                          title: data['title'],
                          author: data['author'],
                          price: '\$${data['price']}.00',
                          category: data['category'],
                          description: data['description'],
                          image: data['imageUrl'],
                        ),
                      ),
                    );
                  },

                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),

                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      children: [
                        Image.asset(data['imageUrl'],
                          width: 110,
                          height: 198,
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Text('BRAND NEW',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),

                                  Text('\$${data['price']}.00',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),
                              Text(data['title'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 6),
                              Text(data['author'],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              SizedBox(height: 1),
                              Divider(thickness: 0.5,),
                              SizedBox(height: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data['category']=='COMPUTER SCIENCE'
                                      ? 'COMPUTER\nSCIENCE'
                                      : data['category']=='ELECTRICAL & ELECTRONICS'
                                      ? 'ELECTRICAL &\nELECTRONICS'
                                      : data['category'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),

                                  ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),

                                    child: Text('+ADD TO CART',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

          ],
        ),
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

        else if(index == 2){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=> const Cart(),
                ),
            );
          }
        },


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
            label: 'SEARCH',
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
            label: 'ACCOUNT',
          ),
        ],
      ),
    );
  }

}
