import 'package:flutter/material.dart';
//import 'package:bookverse/language.dart';
import 'package:bookverse/theme.dart';
import 'package:bookverse/privacy.dart';
import 'package:bookverse/feedback.dart';

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
                  Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) => const Language()),
                  );
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
                Navigator.push(
                  context,

                  MaterialPageRoute(builder: (context) => const Themepage()),
                );
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
                Navigator.push(
                  context,

                  MaterialPageRoute(builder: (context) => const Privacy()),
                );
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
                Navigator.push(
                  context,

                  MaterialPageRoute(builder: (context) => const Feedback_page()),
                );
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

class Language extends StatelessWidget{
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),

      body: Column(
        children: [
          ListTile(

            title: Text(

              "English (UK)",

              style: TextStyle(

                fontSize: 22,

                color: Colors.black,

              ),

            ),

            onTap: (){

            },

          ),

          ListTile(

            title: Text(

              "English (USA)",

              style: TextStyle(

                fontSize: 22,

                color: Colors.black,

              ),

            ),

            onTap: (){

            },

          ),


        ],
      ),
    );

  }
}




class Feedback_page extends StatelessWidget{
  const Feedback_page ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),

      body: Padding(

        padding: EdgeInsets.all(20),


        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,


          children: [


            SizedBox(height: 30),



            Center(

              child: Text(

                "We value your feedback",

                style: TextStyle(

                  fontSize: 24,

                  fontWeight: FontWeight.bold,

                ),

              ),

            ),



            SizedBox(height: 40),



            Text(

              "How was your experience?",

              style: TextStyle(

                fontSize: 18,

                fontWeight: FontWeight.w900,

              ),

            ),









            SizedBox(height: 40),



            TextField(

              maxLines: 5,


              decoration: InputDecoration(

                hintText: "Write your feedback...",


                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(10),

                ),

              ),

            ),



            SizedBox(height: 30),



            Center(
              child: SizedBox(


                width: 250,

                height: 60,


                child: ElevatedButton(

                  onPressed: (){


                  },


                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.black,

                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(30),

                    ),

                  ),


                  child: Text(

                    "Submit Feedback",

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 18,

                      fontWeight: FontWeight.bold,

                    ),

                  ),

                ),

              ),
            ),

            SizedBox(height: 10,),
            Text('Thanks for your feedback',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),



          ],

        ),

      ),
    );
  }
}



class Privacy extends StatelessWidget{
  const Privacy ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),

      body: Padding(


        padding: EdgeInsets.all(20),


        child: Column(


          crossAxisAlignment: CrossAxisAlignment.start,


          children: [



            Text(

              "Privacy Policy",

              style: TextStyle(

                fontSize: 28,

                fontWeight: FontWeight.bold,

                color: Colors.black,

              ),

            ),




            SizedBox(height: 20),





            Text(

              "BookVerse respects your privacy. We keep your personal information safe and do not share your information with others without permission.",


              style: TextStyle(

                fontSize: 18,

                color: Colors.black,

              ),

            ),




            SizedBox(height: 20),





            Text(

              "Your data is used only to provide a better reading and shopping experience.",


              style: TextStyle(

                fontSize: 18,

                color: Colors.black,

              ),

            ),


            SizedBox(height: 30,),

            Text('Thanks For Support us.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),


          ],


        ),


      ),


    );


  }
}



class Themepage extends StatelessWidget{
  const Themepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
    );
  }
}

