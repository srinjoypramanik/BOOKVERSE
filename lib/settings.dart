import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        // title: Text('Settings',
        //     style: TextStyle(
        //         color: Colors.black,
        //     ),
        // ),
      ),

      body: Column(
          children: [

            SizedBox(height: 20,),

            SizedBox(

              height: 40,
              child: Center(
                child: Text('Language',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      decoration: TextDecoration.underline,

                    ),
                ),
              ),
            ),
          ]
      ),
    );
  }
}
