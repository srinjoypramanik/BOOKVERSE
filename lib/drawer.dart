import 'package:flutter/material.dart';
import 'CartPage.dart';
import 'profile_page.dart';
import 'settings.dart';
import 'about_us.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [

          Container(
            height: 150,
            color: Colors.black,
            child: Center(
              child: Image.asset('assets/images/bookverse.png',
                color: Colors.white,
                height: 46,
              ),
            ),
          ),
                  SizedBox(height: 10),

          ListTile(
            leading: Icon(Icons.home_filled,
                color: Colors.black),
            title: Text('Home',
              style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: Icon(Icons.category_rounded,
                color: Colors.black),
            title: Text('Categories',
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),



