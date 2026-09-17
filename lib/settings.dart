import 'package:flutter/material.dart';
import 'package:bookverse/language.dart';
import 'package:bookverse/theme.dart';
import 'package:bookverse/privacy.dart';
import 'feedback.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //centerTitle: true,
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

              height: 60,

              child:TextButton(
                onPressed: (){

                },
                child: Text('Language',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 40,),
          Center(
            child: TextButton(

              onPressed: (){

              },

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
          ),

          SizedBox(height: 40,),
          Center(
            child: TextButton(

              onPressed: (){

              },
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
          ),

          SizedBox(height: 40,),
          Center(
            child: TextButton(

              onPressed: (){

              },
              child: SizedBox(

                height: 40,

                child: Text('Feedback',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


