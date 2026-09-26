import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'bookdetails.dart';

class BookSearchBar extends StatefulWidget {
  const BookSearchBar({super.key});

  @override
  State<BookSearchBar> createState() => _BookSearchBarState();
}

class _BookSearchBarState extends State<BookSearchBar> {

  final SearchController searchController = SearchController();

  @override
  void initState() {
    super.initState();

    searchController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      searchController: searchController,

      viewBackgroundColor: Colors.white,

      viewHintText: 'Search books...',

      builder: (
          BuildContext context,
          SearchController controller,
          ) {
        return SearchBar(
          controller: controller,

          hintText: 'Search books...',

          leading: const Icon(
            Icons.search,
            color: Colors.grey,
          ),

          // CROSS BUTTON
          trailing: controller.text.isNotEmpty
              ? [
            IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: const Icon(
                Icons.clear,
                color: Colors.grey,
              ),
            ),
          ]
              : [],

          backgroundColor:
          const WidgetStatePropertyAll(
            Colors.white,
          ),

          elevation:
          const WidgetStatePropertyAll(0),

          side: const WidgetStatePropertyAll(
            BorderSide(
              color: Colors.grey,
            ),
          ),

          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(
              horizontal: 10,
            ),
          ),

          onTap: () {
            controller.openView();
          },
        );