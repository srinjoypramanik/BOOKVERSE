import 'package:flutter/material.dart';
import 'bookdetails.dart';
import 'sign_up.dart';
import 'sign_in.dart';
import 'CartPage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu,
              color: Colors.black,
              size: 35),
        ),

        titleSpacing: 0,
        title: Row(
          children: [Image.asset('assets/images/bookverse.png',
              height: 47)
          ],
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

      //body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search books, authors...',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),

        //Catagories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    color: Colors.black,

                    child: Text('ALL BOOKS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Text('COMPUTER SCIENCE',
                      style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
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
                      ),
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Text('ELECTRONICS',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Available Text
            const SizedBox(height: 12),
            Padding(padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('AVAILABLE HARDCOPIES (4)',
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
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                  ),
                ],
              ),
            ),

            //Books 1
            SizedBox(height: 1),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context)=>const BookDetails(
                        title: 'INTRODUCTION TO ALGORITHMS,\n4TH EDITION',
                        author: 'by Thomas H. Corman',
                        price: '800/-',
                        category: 'COMPUTER SCIENCE',
                        description: 'Introduction to Algorithms is a book on computer programming '
                            'by Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and'
                            ' Clifford Stein. The book is described by its publisher as "the'
                            ' leading algorithms text in universities worldwide as well as the'
                            ' standard reference for professionals". It is commonly cited as a '
                            'reference for algorithms in published papers, with over 10,000 '
                            'citations on CiteSeerX, and over 70,000 citations '
                            'on Google Scholar as of 2024. The book sold half a million copies '
                            'during first 20 years. Wikipedia.',
                      ),
                    ),
                );
              },

              child:
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('BRAND NEW',
                          style: TextStyle(
                            fontSize: 12,
                             ),
                          ),

                        Text('800/-',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),
                    const Text('INTRODUCTION TO ALGORITHMS, 4TH EDITION',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    const Text('Thomas H. Cormen',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    ),

                    SizedBox(height: 1),
                    Divider(thickness: 0.5,),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('COMPUTER SCIENCE',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text('+ADD TO CART',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //Book2
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=> const BookDetails(
                            title: 'ARTIFICIAL INTELLIGENCE:\nA MODERN APPROACH',
                            author: 'Stuart Russell, Peter Norvig',
                            price:  '900/-',
                            category: 'COMPUTER SCIENCE',
                            description: 'Artificial Intelligence: A Modern Approach is a textbook about artificial intelligence by Stuart Russell and Peter Norvig. It provides an introduction to the concepts, techniques, and applications of artificial intelligence.',
                        ),
                    ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('BRAND NEW',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),

                        Text('900/-',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),
                    const Text('ARTIFICIAl INTELLIGENCE: A MODERN APPROACH',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    const Text('Stuart Russell, Peter Norvig',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                    SizedBox(height: 1),
                    const Divider(thickness: 0.5,),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('COMPUTER SCIENCE',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text('+ADD TO CART',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //Book3
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=> const BookDetails(
                      title: 'CLEAN CODE' ,
                      author: 'by Robert C. Martin',
                      price:  '700/-',
                      category: 'COMPUTER SCIENCE',
                      description: 'Bestselling author Robert C. Martin brings new life and updated code to his beloved Clean Code book With Clean Code, Second Edition, Robert C. Martin ("Uncle Bob") reinvigorates the classic guide to software craftsmanship with updated insights, broader scope, and enriched content. ',
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('BRAND NEW',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                        ),
                        Text('700/-',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),
                    const Text('CLEAN CODE: A HANDBOOK OF SOFTWARE CRAFTSMANSHIPS',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    const Text('Robert C. Martin',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                    SizedBox(height: 1),
                    const Divider(thickness: 0.5,),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('COMPUTER SCIENCE',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text('+ADD TO CART',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            //Book4
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=> const BookDetails(
                      title: 'SICP' ,
                      author: 'by Harold Abelson, Gerald Jay Sussman, Julie Sussman',
                      price:  '1200/-',
                      category: 'COMPUTER SCIENCE',
                      description: 'Structure and Interpretation of Computer Programs (SICP) is a computer science textbook by Massachusetts Institute of Technology professors Harold Abelson and Gerald Jay Sussman with Julie Sussman. It is known as the "Wizard Book" in hacker culture.[1] It teaches fundamental principles of computer programming, including recursion, abstraction, modularity, and programming language design and implementation.',
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('BRAND NEW',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                        ),
                        Text('1200/-',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),
                    const Text('STRUCTURE AND INTERPRETATION OF COMPUTER PROGRAMS (SICP)',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    const Text('Harold Abelson, Gerald Jay Sussman, Julie Sussman',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                    SizedBox(height: 1),
                    const Divider(thickness: 0.5,),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('COMPUTER SCIENCE',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text('+ADD TO CART',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
        },
        //Waizur.........................................


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
