import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'bookdetails.dart';

  class BookSearchBar extends StatefulWidget{
    const BookSearchBar({super.key});

    @override
    State<BookSearchBar> createState()=> BookSearchBarState();
  }

  class BookSearchBarState extends State<BookSearchBar>{
    final SearchController searchController=SearchController();

    @override
  void initState() {
    super.initState();

    searchController.addListener((){
      setState(() {});
      });
    }
    @override
  void dispose() {
    searchController.dispose();
    super.dispose();
    }

    void openSearch(){
      searchController.openView();
    }

    @override
    Widget build(BuildContext){
      return SearchAnchor(
        searchController: searchController,
          viewBackgroundColor: Colors.white,
          viewHintText: 'Search books...',

          builder: (context,controller){
          return SearchBar(
            controller: controller,
            hintText: 'Search books...',
            leading: Icon(Icons.search,
            color: Colors.grey,
            ),

            trailing: controller.text.isNotEmpty
            ?[
              IconButton(
                onPressed: (){
                  controller.clear();
                },
                icon: Icon(Icons.clear,
                color: Colors.grey,
                ),
              ),
            ]
              : [],
            backgroundColor: WidgetStatePropertyAll(Colors.white),

            elevation: WidgetStatePropertyAll(0),
            side: WidgetStatePropertyAll(
              BorderSide(color: Colors.grey,),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                horizontal: 10,
              ),
            ),

            onTap: (){
              controller.openView();
            },
           );
          },

          suggestionsBuilder: (context,controller) async{
            final snapshot =await FirebaseFirestore
                .instance
                .collection('books')
                .get();
            final books=snapshot.docs.where((book){
              final data =book.data();

              final title =data['title']
                  .toString()
                  .toLowerCase();
              return title.contains(
                controller.text.toLowerCase(),
              );
            }).toList();

            return books.map((book){
              final data=book.data();

              return ListTile(
                title: Text(data['title'].toString(),
                style: TextStyle(
                  fontSize: 18,
                 ),
                ),

                onTap:  (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>BookDetails(
                            title: data['title'].toString(),
                            author: data['author'].toString(),
                            price: (data['price'] as num).toDouble(),
                            category: data['category'].toString(),
                            description: data['description'].toString(),
                          image: data['imageUrl'].toString(),
                        ),
                    ),
                  );
                },
              );
            }).toList();
             },
          };

    }
  }
