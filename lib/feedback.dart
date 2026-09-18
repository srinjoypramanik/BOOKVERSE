import 'package:flutter/material.dart';

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