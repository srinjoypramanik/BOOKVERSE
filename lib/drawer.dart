import 'package:flutter/material.dart';
import 'CartPage.dart';
import 'profile_page.dart';
import 'settings.dart';
import 'about_us.dart';

class AppDrawer extends StatelessWidget{
  const AppDrawer({super.key});
}

@override
Widget build(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.white,
    child: Column(
      children: [

      Container(
      width: 500,
      height: 150,
      color: Colors.black,
      child: Center(
        child: Image.asset('assets/images/bookverse.png',
            color: Colors.white,
            height: 46),
      ),
    ),
    SizedBox(height: 10),
