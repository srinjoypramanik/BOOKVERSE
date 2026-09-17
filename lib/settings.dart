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

            Center(
              child: SizedBox(
              
                height: 70,
                child: TextButton(
                  onPressed: (){
                    
                  },

                  child: Text('Language',
                    style: TextStyle(
                      fontSize: 40,
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ]
      ),
    );
  }
}
