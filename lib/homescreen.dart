import 'package:flutter/material.dart';
import 'bookdetails.dart';
import 'sign_in.dart';
import 'CartPage.dart';
import 'profile_page.dart';
import 'drawer.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

            Padding(padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search books, authors...',
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
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
                    child: Text('ELECTRICAL & ELECTRONICS',
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
                ],
              ),
            ),


            const SizedBox(height: 12),
            Padding(padding: const EdgeInsets.symmetric(
                horizontal: 15,
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
                          fontSize: 15,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                  ),
                ],
              ),
            ),

            //Books 1
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context)=>const BookDetails(
                        title: 'INTRODUCTION TO ALGORITHMS,\n4TH EDITION',
                        author: 'by Thomas H. Corman',
                        price: '\$12.00',
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
                        image: 'assets/images/intro_to_algo.jpg',
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
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/intro_to_algo.jpg',
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
                                padding: EdgeInsets.symmetric(
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
                              Text('\$12.00',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 12),
                          const Text('INTRODUCTION TO ALGORITHMS, 4TH EDITION',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,

                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          const Text('Thomas H. Cormen',
                            overflow: TextOverflow.ellipsis,
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
                              const Text('COMPUTER \nSCIENCE',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: (){
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                ),
                                child: const Text('+ADD TO CART',
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
            ),

            //Book2
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=> const BookDetails(
                            title: 'ARTIFICIAL INTELLIGENCE: A MODERN \nAPPROACH',
                            author: 'Stuart Russell, Peter Norvig',
                            price:  '\$8.00',
                            category: 'COMPUTER SCIENCE',
                            description: 'Artificial Intelligence: A Modern Approach is a textbook'
                                ' about artificial intelligence by Stuart Russell and Peter Norvig.'
                                ' It provides an introduction to the concepts, techniques, and '
                                'applications of artificial intelligence. AIMA has been called '
                                '"the most popular artificial intelligence textbook in the world", '
                                'and is considered the standard text in the field of AI. As of 2023, '
                                'it was used at over 1500 universities worldwide,and has '
                                'over 59,000 citations on Google Scholar. It gives detailed '
                                'information about the working of algorithms in AI.',
                          image: 'assets/images/ai_modern.jpg',
                        ),
                    ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/ai_modern.jpg',
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
                                padding: EdgeInsets.symmetric(
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

                              Text('\$8.00',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 12),
                          const Text('ARTIFICIAl INTELLIGENCE: A MODERN APPROACH',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,

                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          const Text('Stuart Russell, Peter Norvig',
                            overflow: TextOverflow.ellipsis,
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
                              const Text('COMPUTER \nSCIENCE',
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
            ),

            //Book3
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=> const BookDetails(
                      title: 'CLEAN CODE: A HANDBOOK OF \nSOFTWARE CRAFTSMANSHIPS' ,
                      author: 'by Robert C. Martin',
                      price:  '\$10.00',
                      category: 'COMPUTER SCIENCE',
                      description: '"Clean Code" by Robert C. Martin is a foundational '
                          'software engineering guide that teaches developers how to '
                          'write readable, maintainable, and highly efficient code. '
                          'The book centers around the philosophy that code should '
                          'be as readable as well-written prose, introducing core '
                          'tenets like the Boy Scout Rule and the strict mandate that '
                          'functions should do exactly one thing. While heavily '
                          'illustrated with Java-based examples, its universal '
                          'focus on meaningful naming conventions, robust unit '
                          'testing makes it a staple for developers.',
                      image: 'assets/images/clean_code.jpg',
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/clean_code.jpg',
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
                                padding: EdgeInsets.symmetric(
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
                              Text('\$10.00',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 12),
                          const Text('CLEAN CODE: A HANDBOOK OF SOFTWARE CRAFTSMANSHIPS',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,

                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          const Text('Robert C. Martin',
                            overflow: TextOverflow.ellipsis,
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
                              const Text('COMPUTER \nSCIENCE',
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
            ),

            //Book4
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=> const BookDetails(
                      title: 'Structure and Interpretation of Computer \nPrograms (SICP)' ,
                      author: 'by Harold Abelson, Gerald Jay Sussman, Julie Sussman',
                      price:  '\$6.00',
                      category: 'COMPUTER SCIENCE',
                      description: 'Structure and Interpretation of Computer Programs (SICP) '
                          'is a computer science textbook by Massachusetts Institute of '
                          'Technology professors Harold Abelson and Gerald Jay Sussman with'
                          ' Julie Sussman. It is known as the "Wizard Book" in hacker '
                          'culture. It teaches fundamental principles of computer '
                          'programming, including recursion, abstraction, modularity, '
                          'and programming language design and implementation. The book '
                          'describes computer science concepts using Scheme, a dialect '
                          'of Lisp. Wikipedia.',
                      image: 'assets/images/si_cp.jpg',
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/si_cp.jpg',
                    width:110,
                      height:198,
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
                                padding: EdgeInsets.symmetric(
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
                              Text('\$6.00',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 12),
                          const Text('STRUCTURE AND INTERPRETA\nTION OF COMPUTER PROGRAMS (SICP)',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,

                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          const Text('Harold Abelson, Gerald Jay Sussman, Julie Sussman',
                            overflow: TextOverflow.ellipsis,
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
                              const Text('COMPUTER \nSCIENCE',
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
            label: 'ACCOUNT',
          ),
        ],
      ),
    );
  }
}
