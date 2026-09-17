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
          SizedBox(height: 40,),
          Center(

            child: SizedBox(

              height: 40,

              child: Text('Language',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),

          SizedBox(height: 40,),
          Center(
            child: SizedBox(

              height: 40,

              child: Text('Theme',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),

          SizedBox(height: 40,),
          Center(
            child: SizedBox(

              height: 40,

              child: Text('Privacy',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}


