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

            elevation: ,
           )
          }
    }
  }
